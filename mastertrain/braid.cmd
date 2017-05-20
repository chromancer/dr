#USAGE -- .braid <item> <container>

action [override] goto EarlyEnd

prep:
put remove my gloves
pause
put stow my gloves
pause

forage:
pause
match braid you manage
match forage roundtime
put forage %1
matchwait

braid:
pause
match trash nothing more than wasted effort
match trash already as long
match exp more material
match braid roundtime
put braid my %1
matchwait

trash:
put put my %1 in %2
goto exp

exp:
pause
match rest dazed
match rest nearly locked
match rest mind lock
match forage exp help
put skill mech
matchwait

rest:
put put my %1 in %2
pause
put put my %1 in %2
pause
put get my gloves
pause
put wear my gloves
pause
echo
echo * * *
echo * * * Mechanical lore is locked. Exiting...
echo * * *
echo
exit

EarlyEnd:
put put my %1 in %2
pause
put put my %1 in %2
pause
put get my gloves
pause
put wear my gloves
pause
echo * * * Mechanical lore was overridden and ended early. Exiting...
exit
