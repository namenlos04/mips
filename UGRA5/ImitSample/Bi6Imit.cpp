//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include <stdio.h>

#include "Unit1.h"
#include "Bi6DLL.h"
//---------------------------------------------------------------------------
USELIB("Bi6.lib");
USEFORM("Unit1.cpp", Form1);
//---------------------------------------------------------------------------
extern "C" int __cdecl __export ImitEntry(int cmd, void *p);
//---------------------------------------------------------------------------
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
  switch (reason) {
    case DLL_PROCESS_ATTACH:
      if (Form1 == NULL)
        Form1 = new TForm1(NULL);
      break;
    case DLL_PROCESS_DETACH:
      delete Form1;
      Form1 = NULL;
      break;
  }
  return 1;
}
//---------------------------------------------------------------------------
int __cdecl ImitEntry(int cmd, void *p)
{
  CmdId = cmd;
  pInfo = p;
  int procNum = bi6_GetProcessNum();
  if (procNum <= 0)  Form1->Label1->Caption = "ЦВК А";
  else  Form1->Label1->Caption = "ЦВК У";
  char *event;
  switch (CmdId) {
    case BI6_TRACEEVENTINDEX: event = "Трассировка"; break;
    case BI6_CMDEVENTINDEX: event = "Выполнение команды"; break;
    case BI6_CMDAEVENTINDEX: event = "Выбор команды"; break;
    case BI6_READEVENTINDEX: event = "Чтение"; break;
    case BI6_WRITEEVENTINDEX: event = "Запись"; break;
    case BI6_TIMEEVENTINDEX: event = "Время в цикле"; break;
    case BI6_KOPEVENTINDEX: event = "Код операции"; break;
    case BI6_PNAEVENTINDEX: event = "Прерывание ПНА"; break;
    case BI6_OFEVENTINDEX: event = "Прерывание OF"; break;
    case BI6_DIVEVENTINDEX: event = "Прерывание Н.Дел"; break;
    case BI6_PROGEVENTINDEX: event = "Прерывание ПРОГ"; break;
    case BI6_TIMEREVENTINDEX: event = "Прерывание таймера"; break;
    case BI6_PVV0EVENTINDEX: event = "Прерывание PVV0"; break;
    case BI6_TMRVALEVENTINDEX: event = "Значение таймера"; break;
    case BI6_EXPREVENTINDEX: event = "Условное выражение"; break;
    case BI6_NCEVENTINDEX: event = "Начало цикла"; break;
    case BI6_KNLTRACEKSKEVENTINDEX: event = "Трассировка КСК"; break;
    case BI6_KNLTRACEIOEVENTINDEX: event = "Трассировка ввода-вывода"; break;
    case BI6_KNLCMDEVENTINDEX: event = "Выполнение команды канала"; break;
    case BI6_KNLCMDAEVENTINDEX: event = "Выбор команды канала"; break;
    case BI6_KNLREADEVENTINDEX: event = "Чтение в канале"; break;
    case BI6_KNLWRITEEVENTINDEX: event = "Запись в канале"; break;
    case BI6_KNLTIMEEVENTINDEX: event = "Время в канале"; break;
    case BI6_KNLKOPEVENTINDEX: event = "Код операции канала"; break;
    case BI6_KNLABONINEVENTINDEX: event = "Ввод из абонентов"; break;
    case BI6_KNLABONOUTEVENTINDEX: event = "Вывод в абоненты"; break;
    case BI6_IMITBEFOREIO: event = "Начало обмена"; break;
    case BI6_IMITAFTERIO: event = "Конец обмена"; break;
    case -1: event = "Командный файл"; break;
    default: event = "?";
  }
  char buf[128];
  BI6_IMITINFO *info = (BI6_IMITINFO*)p;
  sprintf(buf, "Событие \'%s\'  Параметр 0x%lX  Цикл %ld  Время %ld",
    event, info->eventParam, info->cycleNum, info->time);
  Form1->ListBox1->Items->Add(buf);
  Form1->ShowModal();
  return 0;
}
//---------------------------------------------------------------------------

