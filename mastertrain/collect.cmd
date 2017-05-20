forage:
put collect %1
waitfor roundtime
pausepart 2
put kick pile
pause 1
match leaving nearly locked
match leaving mind lock
match forage EXP HELP for more
put sk %2
matchwait

leaving:
echo * * * Perception and outdoorsmanship locked. Exiting.
Exit
