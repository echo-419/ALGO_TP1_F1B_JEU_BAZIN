 progrm nim


TYPE
	nballumette: Integer;
	resutattest: Integer;	
	joueurJ:Integer;

PROCEDURE test_allumette(nballumette:Integer;var resultattest:Integer)					//test du nombre d'allumette restante

begin
	if nballumette > 2 then
		resutattest:=0;
	end;

	if nballumette = 2 then
		resutattest:=1;
	end;

	if nballumette =1 then
		resutattest:=2;
	end;
end;

PROCEDURE allumette_moins (joueurJ:Integer;resustattest:Integer;var nballumette:Integer) 		// un joueur enleve des allumette
VAR
	nbretiter:Integer

begin
	if joueurJ=1 then
		writeln"C'est au joueur 1 de joueur"
	else
		writeln"C'est au joueur 2 de joueur"
	end;

	writeln('il y a ',nballumette, 'allumettes');												//combien il reste d'allumette

	CAS resultattest of
		0:writeln('Combien enlevez vous d allumette: 1,2 ou 3 ?'); 
		1:writeln('Combien enlevez vous dallumette: 1 ou 2 ?') ;
		2:writeln('Combien enlevez vous dallumette: 1 ou 1  ?');
	end;

	LIRE nbretirer

	if nballumette > nbretirer faire 														// on ne retire pas plus d'allumette que posifble
		nballumette:=nballumette - nbretirer 				
	end;

end;

PROCUDURE commence(var joueurJ:Integer) 														// deend;ir que le joueur 1 commencera


begin
	writeln('Le joueur 1 commence');
	joueurJ:=1;
end;

PROCEDURE switch (var joueurJ:Integer)														//changement de joueur

begin
	if joueurJ=1 then
		joueurJ:=2;
	end;

	if joueurJ=2 then
		joueurJ:=1;
	end;
end;



begin

	nballuette:=21;										//initialisation du nombre d'allumette

	commencer ;											

	repeat

		test_allumette;									// verif du nombre d'allumette restante
		allumette_moins; 								//soustraction d'allumette par un joueur
		switch 		;									//changement de joueur

	until resultattest=2;								//il n'y a plus qu'une allumette

	switch;
	writeln('Le joueur '),joueurJ,'' a perdu');				
end.