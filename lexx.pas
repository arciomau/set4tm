unit lexx;

interface

type TLexemeType=(press,longpress,button1a,button2a,button3a,lb,rb,amp,kryshka,szklo,eoe);
 TLexeme=Record
 LexemeType:TLexemeType;
 pos:integer;
 Lexeme: string
 end;

 TLexemeList=array of TLExeme;

 TLexicalAnalyzer=class
     private
     FLexemeList:TLexemeList;
     FIndex:Integer;
     function GetLexeme:TLexeme;
    procedure ExtractLexeme(const S:string;var P:Integer);
     procedure PutLexeme(NewLexemeType:TLexemeType;NewPos:Integer;NewLexeme:string);
     function GetLExemeList:TLexemeList;
     public
     constructor Create;
   procedure Parse(const Expr:string);
     destructor Free;
     property Lexeme:TLexeme read GetLexeme;
     property LexemList:TLExemeList read GetLExemeList;
     end;

implementation

destructor TLexicalAnalyzer.Free;
begin
Finalize(FlexemeList);
end;

constructor TlexicalAnalyzer.Create;
begin
   inherited Create;
   SetLength(FLexemeList,0);
end;

function Tlexicalanalyzer.GetLExemeList:Tlexemelist;
begin
result:=self.FLexemeList
end;

function Tlexicalanalyzer.GetLexeme:Tlexeme;
begin
Result:=FLexemeList[FIndex]
end;

procedure Tlexicalanalyzer.ExtractLexeme(const S:string;var P:Integer);
begin
 if P>Length(S) then
   Exit
   else
  case S[P] of
'1':begin
        putlexeme(button1a,p,'');
        inc(p)
    end;
'2':begin
        putlexeme(button2a,p,'');
        inc(p)
    end;
'3':begin
        putlexeme(button3a,p,'');
        inc(p)
    end;
'(': begin
        putlexeme(lb,p,'');
        inc(p)
    end;
')': begin
        putlexeme(rb,p,'');
        inc(p)
    end;
'&': begin
        putlexeme(amp,p,'');
        inc(p)
    end;
'k', 'K': begin
        putlexeme(kryshka,p,'');
        inc(p)
    end;
's', 'S': begin
        putlexeme(szklo,p,'');
        inc(p)
    end;
'p', 'P': begin
        putlexeme(press,p,'');
        inc(p)
    end;
'l', 'L': begin
        putlexeme(longpress,p,'');
        inc(p)
    end;
else begin
        putlexeme(eoe,p,'');
        inc(p)
    end
end;
end;

procedure TlexicalAnalyzer.PutLexeme(NewLexemeType:TLexemeType;NewPos:Integer;NewLexeme:string);
begin
 SetLength(FlexemeList,Length(FlexemeList)+1);
 with FLexemeList[Length(FLExemeList)-1] do
 begin
  LexemeType:=NewLexemeType;
  Pos:=NewPos;
  Lexeme:=NewLexeme
 end
end;

procedure  TLexicalAnalyzer.Parse(const Expr:string);
 var P:Integer;
  begin
   SetLength(FLexemeList,0);
   P:=1;
   while (P<=Length(Expr)) do
ExtractLexeme(Expr,P);
   PutLexeme(EOE,P,'');
   FIndex:=0
  end;

end.
