put dive hole

Check1:
Match Check mind lock
match Check nearly locked
Match Top EXP HELP
put sk ap
Matchwait 1

Top:
Match Top ...wait
Match West You begin to
put appraise west
Matchwait

West:
pause .5
move w

App1:
Match App1 ...wait
Match South You begin to
put appraise south
matchwait

South:
pause .5
move s

App2:
Match App2 ...wait
Match East You begin to
put appraise east
Matchwait

East:
pause .5
move e

App3:
Match App3 ...wait
Match North You begin to
put appraise north
Matchwait

North:
pause .5
move n
pause .5
goto Check1

Check:
Match Done mind lock
Match Done nearly locked
Match NoApp EXP HELP
put sk ath
Matchwait 1

NoApp:
move w
pause .7
move s
pause .7
move e
pause .7
move n
pause .7
goto Check1

Done:
move climb embank
pause 1
Echo *** Appraisal is locked ***
Exit
