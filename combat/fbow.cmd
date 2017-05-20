echo
echo * * *
echo * * * Bow training script.
echo * * *
echo

matchstore waitforattack There is nothing else to face
matchstore firearrow You think you have your

put stance evasion

loadarrow:
save "aimarrow"
put load
pausetext 2 roundtime
put aim
storewait

firearrow:
save "loadarrow"
put fire
storewait 1

goto expcheck

expcheck:
match exit mind lock
match loadarrow EXP HELP
put sk bow
matchwait

waitforattack:
waitfor range on you
goto loadarrow

exit:
echo
echo * * *
echo * * * Bow is locked.
echo * * * Exiting and ringing a bell.
echo * * *
echo
exit
