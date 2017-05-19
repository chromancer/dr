play:
put play %1 %2 on zill
waitfor You finish playing
goto expcheck

expcheck:
match exit mind lock
match play EXP HELP
put sk perform
matchwait

exit:
echo
echo * * *
echo * * * Performing is locked. Exiting.
echo * * *
echo
exit
