forage:
put collect %1
waitfor roundtime
pausepart 2
put kick %1
pause 2
match leaving nearly locked
match leaving mind lock
match forage EXP HELP for more
put sk %2
matchwait

leaving:
echo 
echo * * *
echo * * * Perception and outdoorsmanship locked. Exiting.
echo * * *
echo 
Exit