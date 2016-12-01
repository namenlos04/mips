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
  if (procNum <= 0)  Form1->Label1->Caption = "��� �";
  else  Form1->Label1->Caption = "��� �";
  char *event;
  switch (CmdId) {
    case BI6_TRACEEVENTINDEX: event = "�����������"; break;
    case BI6_CMDEVENTINDEX: event = "���������� �������"; break;
    case BI6_CMDAEVENTINDEX: event = "����� �������"; break;
    case BI6_READEVENTINDEX: event = "������"; break;
    case BI6_WRITEEVENTINDEX: event = "������"; break;
    case BI6_TIMEEVENTINDEX: event = "����� � �����"; break;
    case BI6_KOPEVENTINDEX: event = "��� ��������"; break;
    case BI6_PNAEVENTINDEX: event = "���������� ���"; break;
    case BI6_OFEVENTINDEX: event = "���������� OF"; break;
    case BI6_DIVEVENTINDEX: event = "���������� �.���"; break;
    case BI6_PROGEVENTINDEX: event = "���������� ����"; break;
    case BI6_TIMEREVENTINDEX: event = "���������� �������"; break;
    case BI6_PVV0EVENTINDEX: event = "���������� PVV0"; break;
    case BI6_TMRVALEVENTINDEX: event = "�������� �������"; break;
    case BI6_EXPREVENTINDEX: event = "�������� ���������"; break;
    case BI6_NCEVENTINDEX: event = "������ �����"; break;
    case BI6_KNLTRACEKSKEVENTINDEX: event = "����������� ���"; break;
    case BI6_KNLTRACEIOEVENTINDEX: event = "����������� �����-������"; break;
    case BI6_KNLCMDEVENTINDEX: event = "���������� ������� ������"; break;
    case BI6_KNLCMDAEVENTINDEX: event = "����� ������� ������"; break;
    case BI6_KNLREADEVENTINDEX: event = "������ � ������"; break;
    case BI6_KNLWRITEEVENTINDEX: event = "������ � ������"; break;
    case BI6_KNLTIMEEVENTINDEX: event = "����� � ������"; break;
    case BI6_KNLKOPEVENTINDEX: event = "��� �������� ������"; break;
    case BI6_KNLABONINEVENTINDEX: event = "���� �� ���������"; break;
    case BI6_KNLABONOUTEVENTINDEX: event = "����� � ��������"; break;
    case BI6_IMITBEFOREIO: event = "������ ������"; break;
    case BI6_IMITAFTERIO: event = "����� ������"; break;
    case -1: event = "��������� ����"; break;
    default: event = "?";
  }
  char buf[128];
  BI6_IMITINFO *info = (BI6_IMITINFO*)p;
  sprintf(buf, "������� \'%s\'  �������� 0x%lX  ���� %ld  ����� %ld",
    event, info->eventParam, info->cycleNum, info->time);
  Form1->ListBox1->Items->Add(buf);
  Form1->ShowModal();
  return 0;
}
//---------------------------------------------------------------------------

