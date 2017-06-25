action [override] goto EarlyEnd

loop:
put prep %1 %2
waitfor fully prepared to cast your spell

cast:
put cast %3
waitfor You gesture
goto expcheck

expcheck:
match exit mind lock
match exit nearly locked
match loop EXP HELP
put sk debi
matchwait 2

exit:
echo
echo * * *
echo * * * Debilitation is locked. Exiting.
echo * * *
echo
exit

EarlyEnd:
put release spell
echo * * * Debilitation was overridden and ended early. Exiting...
exit
