action [override] goto EarlyEnd

loop:
put prep %1 %2
waitfor fully prepared to cast your spell

put cast %3
matchwait 1
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
echo * * * Mechanical lore was overridden and ended early. Exiting...
exit
