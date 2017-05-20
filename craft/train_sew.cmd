CheckExp:
	match Exit mind lock
	match Exit nearly locked
	match Exit very rapt
	match KnitLoop EXP HELP
	put sk outfitting
	matchwait 10

Exit:
	exit

KnitLoop:
	callwith csew backpack backpack %1 %2 0

	pause 1

	put put %1 in my backpack

	goto CheckExp
