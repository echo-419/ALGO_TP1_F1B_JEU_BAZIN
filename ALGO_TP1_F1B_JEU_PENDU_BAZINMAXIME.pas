program pendu;
uses crt;

function radar(c:char;ch:string):boolean;

VAR
        rad:boolean;
        i:integer;
begin

        rad:=false;
        i:=1;
        while (rad=false) and (i<length(ch)+1) do
                begin
                if ch[i]=c then
                        begin
                        rad:=true;
                        end;
                i:=(i+1);
                end;
        radar:=rad;
end;

function zarb(c:char;motr,motc:string):string;

VAR
        mots:string;
        i:integer;

begin
        mots:=motc;
        for i:=1 to length(motr) do
                begin
                if c=motr[i] then
                        begin
                        mots[i]:=c;
                        end;
                end;
        zarb:=mots
end;

VAR
        mot,mot2:string;
        c:char;
        i,vie:integer;

begin

        vie:=(6);
        writeln('entrer un mot');
        readln(mot);
        mot2:='';
        for i:=1 to length(mot) do
                begin
                mot2[i]:='_';
                end;
        while (vie>0) do
                begin
                writeln('entrer un caractere');
                readln (c);
                if radar(c,mot) then
                        begin
                        mot2:=zarb(c,mot,mot2)
                        end
                else
                        begin
                        vie:=(vie-1)
                        end;

                writeln(mot2);
                writeln('il vous reste ',vie,' essais');
                end;
        if vie=0 then
                begin
                writeln('game over')
                end
        else
                begin
                writeln('victoire');
                end;
        end.

end.
