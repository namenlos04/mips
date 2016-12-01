//---------------------------------------------------------------------------
#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
    TLabel *Label1;
    TListBox *ListBox1;
    TPanel *Panel1;
    TRadioButton *RBReg;
    TRadioButton *RBMem;
    TRadioButton *RBAbon;
    TLabel *Label5;
    TEdit *EditAddr;
    TLabel *Label6;
    TEdit *EditData;
    TLabel *Label3;
    TEdit *EditWordNum;
    TButton *ButtonRead;
    TButton *ButtonWrite;
    TLabel *Label7;
    TEdit *EditCurAddr;
    TButton *ButtonGetCurAddr;
    TButton *ButtonSetCurAddr;
    TBevel *Bevel2;
    TLabel *Label2;
    TEdit *EditDump;
    TButton *ButtonDump;
    TButton *ButtonRest;
    TBevel *Bevel3;
    TBitBtn *ButtonOpenDump;
    TOpenDialog *OpenDialog;
    void __fastcall ButtonReadClick(TObject *Sender);
    void __fastcall ButtonWriteClick(TObject *Sender);
    void __fastcall ButtonGetCurAddrClick(TObject *Sender);
    void __fastcall ButtonSetCurAddrClick(TObject *Sender);
    void __fastcall ButtonOpenDumpClick(TObject *Sender);
    void __fastcall ButtonDumpClick(TObject *Sender);
    void __fastcall ButtonRestClick(TObject *Sender);
    void __fastcall RBRegClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;

extern int CmdId;
extern void *pInfo;
//---------------------------------------------------------------------------
#endif
