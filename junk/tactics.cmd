echo 
echo * * *
echo * * * Tactics training script.
echo * * *
echo 

tactics:
pausepart 5
put bob
waitfor roundtime
put circle
waitfor roundtime
put weave
waitfor roundtime
goto expcheck

expcheck:
match tactics EXP HELP
match locked nearly locked
match locked mind lock
put sk tactics
matchwait

locked:
echo 
echo * * *
echo * * * Tactics is locked. Exiting.
echo * * *
echo 
exit