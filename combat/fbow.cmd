echo
echo * * *
echo * * * Crossbow/bow training script. Training '%1'...
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
put sk %1
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
echo * * * '%1' is locked.
echo * * * Exiting and ringing a bell.
echo * * *
echo
exit
