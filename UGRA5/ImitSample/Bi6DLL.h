// Bi6DLL.h -- Интерфейсный модуль библиотеки Bi6.dll

#ifndef __BI6DLL_H
#define __BI6DLL_H
//---------------------------------------------------------------------------
#ifndef BI6FUNC
#define BI6FUNC __stdcall
#endif

#ifndef __EXPORT_TYPE
#define __EXPORT_TYPE __declspec(dllimport)
#endif
//---------------------------------------------------------------------------
// Коды ошибок
#define BI6_ERR_ADDRALIGN           1
#define BI6_ERR_ADDRNOTEXIST        2
#define BI6_ERR_ADDRNORECORD        3
#define BI6_ERR_WRITEPZU            4
#define BI6_ERR_WRONGREGNUM         5
#define BI6_ERR_WRONGREGRANGE       6
#define BI6_ERR_WRONGREGFORMAT      7
#define BI6_ERR_WRONGADDR           8
#define BI6_ERR_WRONGADDRRANGE      9
#define BI6_ERR_WRONGADDRFORMAT    10
#define BI6_ERR_WRONGABONNUM       11
#define BI6_ERR_WRONGNWORDS        12
#define BI6_ERR_WRONGFORMAT        13
#define BI6_ERR_WRONGKOP           14
#define BI6_ERR_CREATEDUMP         15
#define BI6_ERR_OPENDUMP           16
#define BI6_ERR_READDUMP           17
#define BI6_ERR_WRITEDUMP          18
#define BI6_ERR_DUMPSTRUCT         19
#define BI6_ERR_DUMPINFO           20
#define BI6_ERR_ALLOCMEM           21
#define BI6_ERR_OPENMEMMODEL       22
#define BI6_ERR_NOMEMMODEL         23
#define BI6_ERR_RUNNING            24
#define BI6_ERR_SETEVENT           25
#define BI6_ERR_DELETEEVENT        26

#define BI6_ERR_SYNTAX             31
#define BI6_ERR_DIVBYZERO          32

#define BI6_ERR_ABONALREADYEXISTS  41
#define BI6_ERR_ABONNOTEXIST       42
#define BI6_ERR_ABONDATAINDEX      43
#define BI6_ERR_ABONBUSY           44
#define BI6_ERR_KNLKSKNUMWORDS     45
#define BI6_ERR_KNLKSKTIME         46
#define BI6_ERR_KNLCDNUMWORDS      47
#define BI6_ERR_KNLBUSY            48
#define BI6_ERR_KNLCDNOTINIT       49
#define BI6_ERR_KNLCDJUMP          50
#define BI6_ERR_KNLWRONGKOP        51
#define BI6_ERR_SYNCHRONIZE        52
#define BI6_ERR_IMITERROR          53

#define BI6_ERR_FILENOTFOUND       61
#define BI6_ERR_SEGNOTFOUND        62
#define BI6_ERR_OPENMODULE         63
#define BI6_ERR_MODULESTRUCT       64
#define BI6_ERR_LOADLEN            65
#define BI6_ERR_MODELINFO          66
#define BI6_ERR_CREATEMODEL        67

#define BI6_ERR_OPENPZU            71
#define BI6_ERR_PZU_STRUCT         72
#define BI6_ERR_PZU_READ           73
#define BI6_ERR_PZU_DM             74
#define BI6_ERR_PZU_RP             75
#define BI6_ERR_PZU_TYPE           76
#define BI6_ERR_PZU_NUMBLK         77
#define BI6_ERR_PZU_DIAPADDR       78
#define BI6_ERR_PZU_INFO           79
#define BI6_ERR_PZU_INFOADDR       80

#define BI6_ERR_NML_OPENPASPORT    81
#define BI6_ERR_NML_READPASPORT    82
#define BI6_ERR_NML_OPENZONE       83
#define BI6_ERR_NML_READZONE       84
#define BI6_ERR_NML_ZONE           85
#define BI6_ERR_NML_SEGINFO        86
#define BI6_ERR_NML_OPENSPRAWKA    87
#define BI6_ERR_NML_SPRAWKA        88
#define BI6_ERR_NML_OFFSET         89
#define BI6_ERR_NML_DIAP           90
#define BI6_ERR_NML_DIAPLONG       91
#define BI6_ERR_NML_ZONENUM        92

#define BI6_ERR_CREATESHAREDMEM    93
#define BI6_ERR_MAPSHAREDMEM       94
#define BI6_ERR_NOSHAREDMEM        95
#define BI6_ERR_NOTENOUGHSHAREDMEM 96
#define BI6_ERR_NUMPROCESSES       97
#define BI6_ERR_CREATEEVENT        98
#define BI6_ERR_CREATEMUTEX        99

// Коды ошибок выполнения командного файла
#define BI6_ERR_MISTPLOTL         101
#define BI6_ERR_BEGNOEND          102
#define BI6_ERR_MISTSINEV         103
#define BI6_ERR_UNKNOEVENT        104
#define BI6_ERR_MISTSINACT        105
#define BI6_ERR_UNKNOACT          106
#define BI6_ERR_MISTFADR          107
#define BI6_ERR_NOLENWR           108
#define BI6_ERR_MISTOPENSK        109
#define BI6_ERR_MISTCLOSK         110
#define BI6_ERR_NOTIME            111
#define BI6_ERR_NOADR             112
#define BI6_ERR_NOABON            113
#define BI6_ERR_NOCOP             114
#define BI6_ERR_MISTOBWR          115
#define BI6_ERR_NOPO              116
#define BI6_ERR_MISTADR           117
#define BI6_ERR_MISTCOP           118
#define BI6_ERR_ADRDEC            119
#define BI6_ERR_MISTPOBT          121
#define BI6_ERR_MISTTIME          122
#define BI6_ERR_MISTCIKL          123
#define BI6_ERR_NOAKT             124
#define BI6_ERR_MISTVAL           125
#define BI6_ERR_NOKAV             126
#define BI6_ERR_NOKAVS            127
#define BI6_ERR_NOEQV             128
#define BI6_ERR_MISTNREG          129
#define BI6_ERR_NOREG             130
#define BI6_ERR_MISTREG           131
#define BI6_ERR_ERRFORM           133
#define BI6_ERR_ERRDIAPADR        134
#define BI6_ERR_NOBEGIN           135
#define BI6_ERR_NOOPENF           136
#define BI6_ERR_NOCLOSF           137
#define BI6_ERR_ERRSPIS           138
#define BI6_ERR_EQUPROB           139
#define BI6_ERR_MOREMAX           140
#define BI6_ERR_LESSMIN           141
#define BI6_ERR_NOZAGFILE         142
#define BI6_ERR_MRMAXABON         143
#define BI6_ERR_NUMABON           144
#define BI6_ERR_ERROBZAG          145
#define BI6_ERR_IFEVENT           146
#define BI6_ERR_NBWRITE           147
#define BI6_ERR_KOMMEN            148
#define BI6_ERR_REPCALL           149

#define BI6_ERR_PLOTNULL          300
#define BI6_ERR_NOOPENMIS         301
#define BI6_ERR_MAXSTRC           302
#define BI6_ERR_MAXWPOLE          304
#define BI6_ERR_MAXVC             305
#define BI6_ERR_MAXBUFD           306
#define BI6_ERR_MAXRPOLE          308
#define BI6_ERR_ERRQVR            309
#define BI6_ERR_MAXSTRP           310
#define BI6_ERR_NOEND             311
#define BI6_ERR_MAXADRS           312
#define BI6_ERR_MAXBUFFL          313

// Коды событий
#define BI6_TRACEEVENT        0x00000001  // трассировка команд процессора
#define BI6_CMDEVENT          0x00000002  // выполнение команды
#define BI6_CMDAEVENT         0x00000004  // выбор команды
#define BI6_READEVENT         0x00000008  // чтение
#define BI6_WRITEEVENT        0x00000010  // запись
#define BI6_TIMEEVENT         0x00000020  // время
#define BI6_KOPEVENT          0x00000040  // код операции
#define BI6_PNAEVENT          0x00000080  // прерывание ПНА
#define BI6_OFEVENT           0x00000100  // прерывание OF
#define BI6_DIVEVENT          0x00000200  // прерывание Н.Дел
#define BI6_PROGEVENT         0x00000400  // прерывание ПРОГ
#define BI6_TIMEREVENT        0x00000800  // прерывание таймера
#define BI6_PVV0EVENT         0x00001000  // прерывание PVV0
#define BI6_TMRVALEVENT       0x00002000  // значение таймера
#define BI6_EXPREVENT         0x00004000  // условное выражение
#define BI6_NCEVENT           0x00008000  // начало цикла
#define BI6_TRACEINTEVENT     0x00010000  // трассировка обработки прерываний

#define BI6_KNLTRACEKSKEVENT  0x00100000  // трассировка команд канала
#define BI6_KNLTRACEIOEVENT   0x00200000  // трассировка операций обмена в канале
#define BI6_KNLCMDEVENT       0x00400000  // выполнение команды в канале
#define BI6_KNLCMDAEVENT      0x00800000  // выбор команды в канале
#define BI6_KNLREADEVENT      0x01000000  // чтение в канале
#define BI6_KNLWRITEEVENT     0x02000000  // запись в канале
#define BI6_KNLTIMEEVENT      0x04000000  // время в канале
#define BI6_KNLKOPEVENT       0x08000000  // код операции в канале
#define BI6_KNLABONINEVENT    0x10000000  // ввод из абонента
#define BI6_KNLABONOUTEVENT   0x20000000  // вывод в абонент

#define BI6_ERRORBREAK        0x0FFFFFFF  // ошибка в процессоре
#define BI6_KNLERRORBREAK     0x0FFFFFFE  // ошибка в канале
#define BI6_STOPBREAK         0x0FFFFFFD  // команда 'Стоп'

// Индексы событий
#define BI6_TRACEEVENTINDEX         0
#define BI6_CMDEVENTINDEX           1
#define BI6_CMDAEVENTINDEX          2
#define BI6_READEVENTINDEX          3
#define BI6_WRITEEVENTINDEX         4
#define BI6_TIMEEVENTINDEX          5
#define BI6_KOPEVENTINDEX           6
#define BI6_PNAEVENTINDEX           7
#define BI6_OFEVENTINDEX            8
#define BI6_DIVEVENTINDEX           9
#define BI6_PROGEVENTINDEX         10
#define BI6_TIMEREVENTINDEX        11
#define BI6_PVV0EVENTINDEX         12
#define BI6_TMRVALEVENTINDEX       13
#define BI6_EXPREVENTINDEX         14
#define BI6_NCEVENTINDEX           15
#define BI6_TRACEINTEVENTINDEX     16

#define BI6_KNLTRACEKSKEVENTINDEX  20
#define BI6_KNLTRACEIOEVENTINDEX   21
#define BI6_KNLCMDEVENTINDEX       22
#define BI6_KNLCMDAEVENTINDEX      23
#define BI6_KNLREADEVENTINDEX      24
#define BI6_KNLWRITEEVENTINDEX     25
#define BI6_KNLTIMEEVENTINDEX      26
#define BI6_KNLKOPEVENTINDEX       27
#define BI6_KNLABONINEVENTINDEX    28
#define BI6_KNLABONOUTEVENTINDEX   29

// Коды команд имитации
#define BI6_IMITBEFOREIO  101
#define BI6_IMITAFTERIO   102
//---------------------------------------------------------------------------

struct BI6_IMITINFO {
  DWORD structSize;
  DWORD eventParam;
  DWORD kskL;
  DWORD kskH;
  long  cycleNum;
  long  time;
};

//---------------------------------------------------------------------------
__EXPORT_TYPE int   BI6FUNC bi6_CreateMemModel(const char *fileName,
  DWORD startAddr[], DWORD endAddr[], bool OZUFlag[], int numElem);
__EXPORT_TYPE int   BI6FUNC bi6_OpenMemModel(const char *fileName,
  char errorTextBuf[], unsigned int bufSize);
__EXPORT_TYPE int   BI6FUNC bi6_CloseMemModel();
__EXPORT_TYPE int   BI6FUNC bi6_Run(DWORD addr = 0xFFFFFFFFL);
__EXPORT_TYPE int   BI6FUNC bi6_Stop();
__EXPORT_TYPE int   BI6FUNC bi6_Reset();
__EXPORT_TYPE long  BI6FUNC bi6_GetReg(unsigned int regNum);
__EXPORT_TYPE void  BI6FUNC bi6_SetReg(unsigned int regNum, long value);
__EXPORT_TYPE int   BI6FUNC bi6_ReadMemory(DWORD addr, DWORD &value);
__EXPORT_TYPE int   BI6FUNC bi6_ReadMemory(DWORD addr, WORD &value);
__EXPORT_TYPE int   BI6FUNC bi6_WriteMemory(DWORD addr, DWORD value);
__EXPORT_TYPE int   BI6FUNC bi6_WriteMemory(DWORD addr, WORD value);
__EXPORT_TYPE bool  BI6FUNC bi6_IsModelOpened();
__EXPORT_TYPE bool  BI6FUNC bi6_IsInterpRunning();
__EXPORT_TYPE bool  BI6FUNC bi6_IsWaitMode();
__EXPORT_TYPE int   BI6FUNC bi6_GetProcessNum();
__EXPORT_TYPE DWORD BI6FUNC bi6_GetCurrentAddr();
__EXPORT_TYPE int   BI6FUNC bi6_SetCurrentAddr(DWORD addr);
__EXPORT_TYPE int   BI6FUNC bi6_GetPSW(DWORD &psw0, DWORD &psw1);
__EXPORT_TYPE int   BI6FUNC bi6_GetCommandInfo(DWORD &cmd,
  long &op1H, long &op1L, long &op2H, long &op2L);
__EXPORT_TYPE bool  BI6FUNC bi6_GetTrace();
__EXPORT_TYPE bool  BI6FUNC bi6_GetTraceKnlIO();
__EXPORT_TYPE bool  BI6FUNC bi6_GetTraceKnlKSK();
__EXPORT_TYPE void  BI6FUNC bi6_SetTrace(bool trace);
__EXPORT_TYPE void  BI6FUNC bi6_SetTraceKnlIO(bool trace);
__EXPORT_TYPE void  BI6FUNC bi6_SetTraceKnlKSK(bool trace);
__EXPORT_TYPE int   BI6FUNC bi6_PerformDump(const char *dumpName);
__EXPORT_TYPE int   BI6FUNC bi6_PerformRest(const char *dumpName);
__EXPORT_TYPE int   BI6FUNC bi6_GetAbonData(DWORD abonNum, unsigned int index, DWORD &data);
__EXPORT_TYPE int   BI6FUNC bi6_SetAbonData(DWORD abonNum, unsigned int index, DWORD data);
__EXPORT_TYPE int   BI6FUNC bi6_SetAbonFlags(DWORD abonNum,
  bool imitBeforeIO, bool imitAfterIO, bool shared);
__EXPORT_TYPE int   BI6FUNC bi6_ChangeAbonNum(DWORD abonNum, DWORD newNum);
__EXPORT_TYPE int   BI6FUNC bi6_CreateAbonent(DWORD abonNum, DWORD numWords,
  bool imitBeforeIO = false, bool imitAfterIO = false, bool shared = false);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteAbonent(DWORD abonNum);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteAllAbonents();
__EXPORT_TYPE int   BI6FUNC bi6_LoadModule(const char *moduleName, DWORD loadAddr = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_LoadPZUSegment(const char *pzuName,
  const char *segName = NULL, DWORD loadAddr = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_LoadPZUAddr(const char *pzuName,
  DWORD loadAddr = -1L, DWORD addr1 = -1L, DWORD addr2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_LoadNMLSegment(const char *nmlDir,
  const char *segName = NULL, DWORD loadAddr = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_LoadNMLZone(const char *nmlDir,
  DWORD zoneNum, DWORD offset, DWORD loadAddr1, DWORD loadAddr2 = -1L);
__EXPORT_TYPE void  BI6FUNC bi6_SetImitEntry(int (__cdecl *proc)(int, void*));
__EXPORT_TYPE int   BI6FUNC bi6_CalcExpr(const char *expr, long &result);
//---------------------------------------------------------------------------
__EXPORT_TYPE int   BI6FUNC bi6_SetCmdExecEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetCmdEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetReadEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetWriteEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetTimeEvent(long time,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKopEvent(BYTE kop,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetIntEvent(DWORD eventCode,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetTmrValEvent(WORD tmrVal,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlCmdExecEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlCmdEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlReadEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlWriteEvent(DWORD addr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlTimeEvent(long time,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlKopEvent(BYTE kop,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlAbonInEvent(DWORD abonNum,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetKnlAbonOutEvent(DWORD abonNum,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_SetExpressionEvent(const char *expr,
  long cycleNum1, long cycleNum2, long nRepeat, const char *action, bool reset = false);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteCmdExecEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteCmdEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteReadEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteWriteEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteTimeEvent(long time,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKopEvent(BYTE kop,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteIntEvent(DWORD eventCode,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteTmrValEvent(WORD tmrVal,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlCmdExecEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlCmdEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlReadEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlWriteEvent(DWORD addr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlTimeEvent(long time,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlKopEvent(BYTE kop,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlAbonInEvent(DWORD abonNum,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteKnlAbonOutEvent(DWORD abonNum,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteExpressionEvent(const char *expr,
  long cycleNum1 = -1L, long cycleNum2 = -1L);
__EXPORT_TYPE int   BI6FUNC bi6_DeleteAllEvents(DWORD eventCode = 0xFFFFFFFF);
//---------------------------------------------------------------------------

#endif  // __BI6DLL_H

