echo
echo * * *
echo * * * Thrown weapon (with optional disabling spell and) period experience check.
echo * * *
echo

setvariable Period 0

matchstore ArrangeDead balance]
matchstore ArrangeDead balanced]
matchstore ArrangeDead balance.]
matchstore ArrangeDead balanced.]
matchstore HoldingForEnemy There is nothing else to face
matchstore GetSpear Roundtime

Attack:
if Period == 0 goto CheckDebilitate
AttackBranch:
if Period == 4 goto CheckExp
calculate Period add 1
put lob
storewait 3
goto GetSpear

GetSpear:
put get %1
pausepart 5
goto Attack

CheckDebilitate:
if_3 goto Debilitate
goto AttackBranch

Debilitate:
calculate Period add 1
put prep sleep 10
waitfor You feel fully prepared
put cast
pause 2
goto Attack

CheckExp:
echo
echo * * * Skill for thrown.
echo
match CheckExpExit mind lock
match CheckExpExit nearly locked
match CheckExpContinue EXP HELP
put sk %2
matchwait 3

CheckExpContinue:
calculate Period clear
pausepart 5
goto Attack

CheckExpExit:
echo
echo * * *
echo * * * Thrown is locked. Exiting.
echo * * *
echo
exit

Arrange:
match CheckForEnemy Arrange what?
match Loot cannot be skinned
match Arrange You arrange
match Arrange You begin to arrange
match Arrange You continue arranging
match Skin You complete arranging
put arrange for skin
matchwait 3

Skin:
put skin
pausetext 2 roundtime

Loot:
put loot
pause 1

GetThrown:
put get %1
goto HoldingForEnemy

HoldingForEnemy:
match Attack melee range on you
match Attack balanced and
match Attack balance and
match Attack balance with
match Attack balanced with
echo
echo * * * Holding until next attacker reaches melee range...
echo
matchwait 7
goto HoldingForEnemy
