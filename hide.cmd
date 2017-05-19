hide:
match expcheck You melt into the
match hide notices your attempt
put hide
matchwait 2
goto hide

expcheck:
match EndScript mind lock
match unhide EXP HELP
put sk stealth
matchwait 3
goto hide

unhide:
put unhide
goto hide

EndScript:
echo * * * Stealth is locked. Exiting.
exit
