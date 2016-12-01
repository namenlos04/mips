//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include <stdio.h>

#include "Unit1.h"
#include "Bi6DLL.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1 = NULL;

int CmdId;
void *pInfo;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonReadClick(TObject *Sender)
{
  char buf[32] = { 0 };
  DWORD addr, data, wordNum;
  char *format = RBReg->Checked ? "%lu" : "%lx";
  if (sscanf(EditAddr->Text.c_str(), format, &addr) == 1) {
    if (RBReg->Checked) {
      data = bi6_GetReg(addr);
      sprintf(buf, "%08lX", data);
    }
    else if (RBMem->Checked) {
      if (bi6_ReadMemory(addr, data) == 0)
        sprintf(buf, "%08lX", data);
      else  strcpy(buf, "????????");
    }
    else if (RBAbon->Checked) {
      if (sscanf(EditWordNum->Text.c_str(), "%lu", &wordNum) == 1) {
        if (bi6_GetAbonData(addr, wordNum, data) == 0)
          sprintf(buf, "%08lX", data);
        else  strcpy(buf, "????????");
      }
    }
  }
  EditData->Text = buf;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonWriteClick(TObject *Sender)
{
  DWORD addr, data, wordNum;
  char *format = RBReg->Checked ? "%lu" : "%lx";
  if (sscanf(EditAddr->Text.c_str(), format, &addr) == 1 &&
      sscanf(EditData->Text.c_str(), "%lx", &data) == 1) {
    if (RBReg->Checked) {
      bi6_SetReg(addr, data);
    }
    else if (RBMem->Checked) {
      if (bi6_WriteMemory(addr, data) != 0)
        EditData->Text = "????????";
    }
    if (RBAbon->Checked) {
      if (sscanf(EditWordNum->Text.c_str(), "%lu", &wordNum) == 1)
        if (bi6_SetAbonData(addr, wordNum, data) != 0)
          EditData->Text = "????????";
    }
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonGetCurAddrClick(TObject *Sender)
{
  char buf[16];
  sprintf(buf, "%06lX", bi6_GetCurrentAddr());
  EditCurAddr->Text = buf;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonSetCurAddrClick(TObject *Sender)
{
  DWORD addr;
  if (sscanf(EditCurAddr->Text.c_str(), "%lx", &addr) == 1)
    bi6_SetCurrentAddr(addr);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonOpenDumpClick(TObject *Sender)
{
  if (OpenDialog->Execute())
    EditDump->Text = OpenDialog->FileName;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonDumpClick(TObject *Sender)
{
  if ( !EditDump->Text.IsEmpty() ) {
    if (bi6_PerformDump(EditDump->Text.c_str()) != 0)
      ShowMessage("Ошибка создания дампа");
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonRestClick(TObject *Sender)
{
  if ( !EditDump->Text.IsEmpty() ) {
    if (bi6_PerformRest(EditDump->Text.c_str()) != 0)
      ShowMessage("Ошибка восстановления дампа");
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::RBRegClick(TObject *Sender)
{
  if (Sender == RBAbon) {
    EditWordNum->Enabled = true;
    EditWordNum->Color = clWindow;
  }
  else {
    EditWordNum->Enabled = false;
    EditWordNum->Color = clBtnFace;
  }
}
//---------------------------------------------------------------------------

