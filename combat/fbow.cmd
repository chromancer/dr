echo
echo * * *
echo * * * Crossbow/bow training script. Training '%1'...
echo * * *
echo

action "You feel fully prepared to cast your spell" put "cast"

if_1 goto begin
goto instructions

begin:
matchstore waitforattack There is nothing else to face
matchstore firearrow You think you have your

put stance evasion

loadarrow:
put load
pausetext 2 roundtime
if_2 goto Debilitate
goto aimarrow

Debilitate:
put prep %2 %3
goto aimarrow

aimarrow:
put aim
storewait

firearrow:
put fire
storewait 1

goto expcheck

expcheck:
match expexit mind lock
match loadarrow EXP HELP
put sk %1
matchwait

waitforattack:
	match aimarrow range on you
	match aimarrow balanced and
	match aimarrow balance and
	match aimarrow balanced with
	match aimarrow balance with
	echo
	echo * * * Holding until next attacker appears...
	echo
	matchwait 10
	goto waitforattack

instructions:
echo * * * Fbow takes 1 or 3 arguments.
echo * * * First argument is skill to train (bow or crossbow).
echo * * * Second argument is a debilitation battle spell and third is the mana to prep it with.
echo * * * This would help you hit an enemy that is too high for you to hit normally.
goto exit

expexit:
echo * * * '%1' is locked.

exit:
echo * * * Fbow is exiting.
exit
