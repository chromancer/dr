echo 
echo * * *
echo * * * 
echo * * *
echo 


GetRune:
put get %1 rune

FocusRunestone:
echo * * * Focusing on a runestone...
put focus my rune
waitfor roundtime

ExpCheck:
match FocusRunestone EXP HELP
match EndScript mind lock
put sk sorcery
matchwait

EndScript:
put stow my rune
echo 
echo * * *
echo * * * Sorcery is locked. Exiting...
echo * * *
echo 
exit