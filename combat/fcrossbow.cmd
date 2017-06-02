echo
echo * * *
echo * * * Crossbow training script.
echo * * *
echo

matchstore waitforattack There is nothing else to face
matchstore firearrow You think you have your

put stance evasion

loadarrow:
put load
pausetext 2 roundtime

aimarrow:
put aim
storewait

firearrow:
put fire
storewait 1

goto expcheck

expcheck:
match exit mind lock
match loadarrow EXP HELP
put sk crossbow
matchwait

waitforattack:
	match aimarrow melee range on you
	match aimarrow balanced and
	match aimarrow balance and
	match aimarrow balanced with
	match aimarrow balance with
	echo
	echo * * * Holding until next attacker appears...
	echo
	matchwait 10
	goto waitforattack


exit:
echo
echo * * *
echo * * * Crossbow is locked.
echo * * * Exiting and ringing a bell.
echo * * *
echo
exit
