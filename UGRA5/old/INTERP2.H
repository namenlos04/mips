/* =========================================================== *\
**  interp2.h -- Описание класса TInterpretator                **
\* =========================================================== */

#ifndef __INTERP_H
#define __INTERP_H

#include <windows.h>

#define SO_DIALOG_ACTIVE 0x1000

#define SO_MAPSIZE   2048
#define SO_DATASIZE  (SO_MAPSIZE - 2)
#define ERRTEXTSIZE  80

class TInterpretator {
public:
  TInterpretator(const char* modelName = "");
  ~TInterpretator();
  bool IsError();
  const char* GetErrorText();
  WORD GetNewcRetValue();
  int inst_c(char masinf[], long masadr[], WORD l, WORD n);
  int inst_i(short masinf[], long masadr[], WORD l, WORD n);
  int inst_l(long masinf[], long masadr[], WORD l, WORD n);
  int inst_r(long masinf[], int masreg[], WORD l, WORD n);
  int outst_c(char masres[], long masadr[], WORD l, WORD n);
  int outst_i(short masres[], long masadr[], WORD l, WORD n);
  int outst_l(long masres[], long masadr[], WORD l, WORD n);
  int outst_r(long masres[], int masreg[], WORD l, WORD n);
  int newc(long adr);
  int putfc(long masadr[], WORD n);
  int SetNCStop(long masNC[], WORD n);
  int cont();
  int sbros();
  int dump();
  int rest();
  int WriteProtocol(bool write = true);
  int SetDialog(bool set = true);
  bool IsDialog();
  int PrintComment(const char* comment);
  int PrintError(const char* error);
private:
  int so_rzdnt(const char*);
  int so_osv();
  bool SendCommand();
  static HANDLE hEvInterpret, hEvImit;
  static HANDLE hMapFile;
  static PROCESS_INFORMATION procInfo;
  static char * lpMapAddress;
  static bool initOK;
  static bool modelOK;
  static WORD numObjects;
  static char ErrorText[ERRTEXTSIZE];
};

#endif  // __INTERP_H

