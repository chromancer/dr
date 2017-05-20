retreat:
match retreat retreat back
match hide out of combat
match hide retreat from combat
match hide are already as far away as you can get
put retreat
matchwait 1
goto retreat

hide:
match expcheck You melt into the
match retreat notices your attempt
put hide
matchwait 1
goto retreat

expcheck:
match EndScript mind lock
match unhide EXP HELP
put sk stealth
matchwait 2
goto hide

unhide:
put unhide
goto retreat

EndScript:
echo
echo * * *
echo * * * Stealth is locked. Exiting.
echo * * *
echo
exit
