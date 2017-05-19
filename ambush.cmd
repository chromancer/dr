hide:
match expcheck discovers you, ruining your hiding place
match expcheck has spotted you
match expcheck ruining your hiding
match expcheck notices your attempt
match stalk You melt
match stalk You blend
match stalk already hidden
put hide
matchwait

stalk:
match expcheck discovers you, ruining your hiding place
match expcheck has spotted you
match expcheck ruining your hiding
match expcheck notices your attempt
match expcheck notices you trying
match expcheck must be hidden
match expcheck Stalking is an inherently
match wait is already quite dead
match advance You move into
match advance You are already stalking
match advance You're already stalking
put stalk %1
matchwait

advance:
match expcheck discovers you, ruining your hiding place
match expcheck has spotted you
match expcheck notices you trying
match expcheck You spin around to face
match expcheck You begin to advance
match wait is already quite dead
match retreat from your current melee
match AmbushNow already at melee
match AmbushNow You close to melee

put advance %1
matchwait

AmbushNow:
put attack %1
waitfor roundtime
goto retreat

retreat:
match expcheck notices you trying
match expcheck retreat from combat
match expcheck You are already as far away
match retreat back to pole range
match retreat back out to pole range
match retreat but are unable to get away
match unhide back out of combat
put retreat
matchwait

unhide:
match standfix stumble and crash to the ground
match expcheck You come out of hiding
put unhide
matchwait 3

standfix:
put stand
pause 1
goto expcheck

expcheck:
match EndScript mind lock
match hide EXP HELP
put sk stealth
matchwait 3
goto hide

wait:
echo * * * Waiting for next enemy.
match wait else to face
match hide You turn to face
put face next
matchwait 3
goto wait

EndScript:
echo * * * Stealth is locked. Exiting...
pause 1
put retreat
put retreat
pausepart 5
put hide
exit