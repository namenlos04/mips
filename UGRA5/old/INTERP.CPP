/* =========================================================== *\
**  interp.cpp -- Реализация класса TInterpretator             **
\* =========================================================== */

#include <stdio.h>
#include "interp.h"

HANDLE TInterpretator::hEvInterpret, TInterpretator::hEvImit;
HANDLE TInterpretator::hMapFile;
PROCESS_INFORMATION TInterpretator::procInfo;
char * TInterpretator::lpMapAddress;
bool TInterpretator::initOK = false;
bool TInterpretator::modelOK = false;
WORD TInterpretator::numObjects = 0;
char TInterpretator::ErrorText[ERRTEXTSIZE] = "\0\0";

TInterpretator::TInterpretator(const char* modelName)
{
  numObjects++;
  if ( numObjects > 1 && initOK == true )  return;
  *(LPWORD)ErrorText = 0xFFFF;
  ErrorText[2] = 0;
  HWND hWnd = FindWindow("TInterpretWin", NULL);
  if (hWnd != NULL) {
    strcpy(ErrorText + 2, "Ошибка: Интерпретатор уже запущен");
    return;
  }
  hEvInterpret = CreateEvent(NULL, false, false, "ActivateInterpret");
  if (hEvInterpret == NULL)
    strcpy(ErrorText + 2,
       "Ошибка: Невозможно создать объект события Interpretator");
  else {
    hEvImit = CreateEvent(NULL, false, false, "ActivateImit");
    if (hEvImit == NULL)
      strcpy(ErrorText + 2, "Ошибка: Невозможно создать объект события Imit");
    else {
      hMapFile = CreateFileMapping( (HANDLE)0xFFFFFFFF, NULL,
        PAGE_READWRITE, 0, SO_MAPSIZE, "InterpretData" );
      if (hMapFile == NULL)
        strcpy(ErrorText + 2, "Ошибка: Невозможно создать отображаемый файл");
      else {
        lpMapAddress = (char*)MapViewOfFile(hMapFile,
          FILE_MAP_ALL_ACCESS, 0, 0, 0);
        if (lpMapAddress == NULL)
          strcpy(ErrorText + 2, "Ошибка: Невозможно отобразить файл");
        else {
          STARTUPINFO startInfo;
          startInfo.cb = sizeof(STARTUPINFO);
          startInfo.lpReserved = NULL;
          startInfo.lpDesktop = NULL;
          startInfo.lpTitle = NULL;
          startInfo.dwFlags = STARTF_USESHOWWINDOW | STARTF_USESTDHANDLES;
          startInfo.cbReserved2 = 0;
          startInfo.lpReserved2 = NULL;
          startInfo.wShowWindow = SW_SHOWMINIMIZED;
          if (CreateProcess(NULL, "imdial.exe", NULL, NULL,
              true, 0, NULL, NULL, &startInfo, &procInfo) == false)
            strcpy(ErrorText + 2, "Ошибка: Невозможно запустить процесс");
          else {
            initOK = true;
            *(LPWORD)(lpMapAddress + SO_DATASIZE) = 0xFFFF;
            modelOK = !so_rzdnt(modelName);
            return;
          }
        }
      }
    }
  }
  UnmapViewOfFile(lpMapAddress);
  CloseHandle(hMapFile);
  CloseHandle(hEvImit);
  CloseHandle(hEvInterpret);
}

TInterpretator::~TInterpretator()
{
  numObjects--;
  if (numObjects > 0 || initOK == false)  return;
  so_osv();
  CloseHandle(procInfo.hThread);
  CloseHandle(procInfo.hProcess);
  modelOK = false;
  initOK = false;
  UnmapViewOfFile(lpMapAddress);
  CloseHandle(hMapFile);
  CloseHandle(hEvImit);
  CloseHandle(hEvInterpret);
}

bool
TInterpretator::IsError()
{
  if (initOK == false)
    return *(LPWORD)ErrorText == 0xFFFF;
  return *(LPWORD)lpMapAddress == 0xFFFF;
}

const char*
TInterpretator::GetErrorText()
{
  if (initOK == false) {
    if ( *(LPWORD)ErrorText != 0xFFFF )  return "";
    return ErrorText + 2;
  }
  if ( *(LPWORD)lpMapAddress != 0xFFFF )  return "";
  return lpMapAddress + 2;
}

WORD
TInterpretator::GetNewcRetValue()
{
  if (modelOK == false)  return 0xFFFF;
  return *(LPWORD)(lpMapAddress + SO_DATASIZE);
}

int
TInterpretator::inst_c(char masinf[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]) + l * n * sizeof(masinf[0]);
  if (lenInfo > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  char* infBuf = lpMapAddress + 6 + n * sizeof(masadr[0]);
  wBuf[0] = 6;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  for (i = 0; i < l * n; i++)
    infBuf[i] = masinf[i];
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::inst_i(short masinf[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]) + l * n * sizeof(masinf[0]);
  if (lenInfo > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  short* infBuf = (short*)(lpMapAddress + 6 + n * sizeof(masadr[0]));
  wBuf[0] = 7;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  for (i = 0; i < l * n; i++)
    infBuf[i] = masinf[i];
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF);
}

int
TInterpretator::inst_l(long masinf[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]) + l * n * sizeof(masinf[0]);
  if (lenInfo > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  long* infBuf = (long*)(lpMapAddress + 6 + n * sizeof(masadr[0]));
  wBuf[0] = 8;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  for (i = 0; i < l * n; i++)
    infBuf[i] = masinf[i];
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF);
}

int
TInterpretator::inst_lk(long masinf[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]) + l * n * sizeof(masinf[0]);
  if (lenInfo > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  long* infBuf = (long*)(lpMapAddress + 6 + n * sizeof(masadr[0]));
  wBuf[0] = 23;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  for (i = 0; i < l * n; i++)
    infBuf[i] = masinf[i];
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF);
}

int
TInterpretator::inst_r(long masinf[], int masreg[], WORD l, WORD n)
{
  if (initOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masreg[0]) + l * n * sizeof(masinf[0]);
  if (lenInfo > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  int*  iBuf = (int*)(lpMapAddress + 6);
  long* infBuf = (long*)(lpMapAddress + 6 + n * sizeof(masreg[0]));
  wBuf[0] = 9;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    iBuf[i] = masreg[i];
  for (i = 0; i < l * n; i++)
    infBuf[i] = masinf[i];
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::outst_c(char masres[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]);
  DWORD lenInfoFrom = 2 + l * n * sizeof(masres[0]);
  if (lenInfo > SO_DATASIZE || lenInfoFrom > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  char* resBuf = lpMapAddress + 2;
  wBuf[0] = 10;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  if (SendCommand() == false)  return 1;
  if ( *(LPWORD)lpMapAddress == 0xFFFF )  return 1;
  for (i = 0; i < l * n; i++)
    masres[i] = resBuf[i];
  return 0;
}

int
TInterpretator::outst_i(short masres[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]);
  DWORD lenInfoFrom = 2 + l * n * sizeof(masres[0]);
  if (lenInfo > SO_DATASIZE || lenInfoFrom > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  short* resBuf = (short*)(lpMapAddress + 2);
  wBuf[0] = 11;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  if (SendCommand() == false)  return 1;
  if ( *(LPWORD)lpMapAddress == 0xFFFF )  return 1;
  for (i = 0; i < l * n; i++)
    masres[i] = resBuf[i];
  return 0;
}

int
TInterpretator::outst_l(long masres[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]);
  DWORD lenInfoFrom = 2 + l * n * sizeof(masres[0]);
  if (lenInfo > SO_DATASIZE || lenInfoFrom > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  long* resBuf = (long*)(lpMapAddress + 2);
  wBuf[0] = 12;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  if (SendCommand() == false)  return 1;
  if ( *(LPWORD)lpMapAddress == 0xFFFF )  return 1;
  for (i = 0; i < l * n; i++)
    masres[i] = resBuf[i];
  return 0;
}

int
TInterpretator::outst_lk(long masres[], long masadr[], WORD l, WORD n)
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masadr[0]);
  DWORD lenInfoFrom = 2 + l * n * sizeof(masres[0]);
  if (lenInfo > SO_DATASIZE || lenInfoFrom > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 6);
  long* resBuf = (long*)(lpMapAddress + 2);
  wBuf[0] = 24;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  if (SendCommand() == false)  return 1;
  if ( *(LPWORD)lpMapAddress == 0xFFFF )  return 1;
  for (i = 0; i < l * n; i++)
    masres[i] = resBuf[i];
  return 0;
}

int
TInterpretator::outst_r(long masres[], int masreg[], WORD l, WORD n)
{
  if (initOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 6 + n * sizeof(masreg[0]);
  DWORD lenInfoFrom = 2 + l * n * sizeof(masres[0]);
  if (lenInfo > SO_DATASIZE || lenInfoFrom > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  int*  iBuf = (int*)(lpMapAddress + 6);
  long* resBuf = (long*)(lpMapAddress + 2);
  wBuf[0] = 13;
  wBuf[1] = l;
  wBuf[2] = n;
  int i;
  for (i = 0; i < n; i++)
    iBuf[i] = masreg[i];
  if (SendCommand() == false)  return 1;
  if ( *(LPWORD)lpMapAddress == 0xFFFF)  return 1;
  for (i = 0; i < l * n; i++)
    masres[i] = resBuf[i];
  return 0;
}

int
TInterpretator::newc(long adr)
{
  if (modelOK == false)  return 0xFFFF;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  *(LPWORD)lpMapAddress = 4;
  *(long*)(lpMapAddress + 2) = adr;
  if (SendCommand() == false)
    *(LPWORD)(lpMapAddress + SO_DATASIZE) = 0xFFFF;
  return *(LPWORD)lpMapAddress;
}

int
TInterpretator::cont()
{
  if (modelOK == false)  return 0xFFFF;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  *(LPWORD)lpMapAddress = 5;
  if (SendCommand() == false)
    *(LPWORD)(lpMapAddress + SO_DATASIZE) = 0xFFFF;
  return *(LPWORD)lpMapAddress;
}

int
TInterpretator::putfc(long masadr[], WORD n)
{
  if (initOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 4 + n * sizeof(masadr[0]);
  if (lenInfo > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 4);
  wBuf[0] = 3;
  wBuf[1] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masadr[i];
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::SetNCStop(long masNC[], WORD n)
{
  if (initOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  DWORD lenInfo = 4 + n * sizeof(masNC[0]);
  if (lenInfo > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  LPWORD wBuf = (LPWORD)lpMapAddress;
  long* lBuf = (long*)(lpMapAddress + 4);
  wBuf[0] = 22;
  wBuf[1] = n;
  int i;
  for (i = 0; i < n; i++)
    lBuf[i] = masNC[i];
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::sbros()
{
  if (initOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  *(LPWORD)lpMapAddress = 15;
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::dump()
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  *(LPWORD)lpMapAddress = 20;
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::rest()
{
  if (modelOK == false)  return 1;
  if (GetNewcRetValue() == SO_DIALOG_ACTIVE)  return SO_DIALOG_ACTIVE;
  *(LPWORD)lpMapAddress = 21;
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::WriteProtocol(bool write)
{
  if (initOK == false)  return 1;
  *(LPWORD)lpMapAddress = 30;
  lpMapAddress[2] = (char)write;
  if (SendCommand() == false)  return 1;
  return *(LPWORD)lpMapAddress;
}

int
TInterpretator::SetDialog(bool set)
{
  if (initOK == false)  return 1;
  *(LPWORD)lpMapAddress = 31;
  lpMapAddress[2] = (char)set;
  if (SendCommand() == false)  return 1;
  return *(LPWORD)lpMapAddress;
}

bool
TInterpretator::IsDialog()
{
  if (initOK == false)  return false;
  *(LPWORD)lpMapAddress = 32;
  if (SendCommand() == false)  return false;
  return (bool)(*(LPWORD)lpMapAddress);
}

int
TInterpretator::SetKanal(bool set)
{
  if (initOK == false)  return 1;
  *(LPWORD)lpMapAddress = 33;
  lpMapAddress[2] = (char)set;
  if (SendCommand() == false)  return 1;
  return *(LPWORD)lpMapAddress;
}

int
TInterpretator::PrintComment(const char* comment)
{
  if (initOK == false)  return 1;
  if (strlen(comment) + 3 > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  *(LPWORD)lpMapAddress = 34;
  strcpy(lpMapAddress + 2, comment);
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::PrintError(const char* error)
{
  if (initOK == false)  return 1;
  if (strlen(error) + 3 > SO_DATASIZE) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Информация не умещается в буфер");
    return 1;
  }
  *(LPWORD)lpMapAddress = 35;
  strcpy(lpMapAddress + 2, error);
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::so_rzdnt(const char* modelName)
{
  if (initOK == false)  return 1;
  *(LPWORD)lpMapAddress = 1;
  strcpy(lpMapAddress + 2, modelName);
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

int
TInterpretator::so_osv()
{
  if (initOK == false)  return 1;
  *(LPWORD)lpMapAddress = 2;
  if (SendCommand() == false)  return 1;
  return ( *(LPWORD)lpMapAddress == 0xFFFF );
}

bool
TInterpretator::SendCommand()
{
  SetEvent(hEvInterpret);
  if (WaitForSingleObject(hEvImit, INFINITE) != WAIT_OBJECT_0) {
    *(LPWORD)lpMapAddress = 0xFFFF;
    strcpy(lpMapAddress + 2, "Ошибка ожидания события");
    return false;
  }
  return true;
}

