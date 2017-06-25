echo
echo * * *
echo * * * Melee fighting loop with periodic experience check.
echo * * * First argument: skill to check.
echo * * * Second argument: creature to loot.
echo * * *
echo

action [override] goto EarlyEnd
action [You feel fully prepared to cast your spell] goto DebilCast

setvariable Period 0

matchstore ArrangeDead balance]
matchstore ArrangeDead balanced]
matchstore ArrangeDead balance.]
matchstore ArrangeDead balanced.]
matchstore HoldingForEnemy There is nothing else to face
matchstore Attack Roundtime

Attack:
if Period == 0 goto CheckDebilitate
AttackBranch:
if Period == 5 goto CheckExp
calculate Period add 1
put attack
storewait 3
goto Attack

CheckDebilitate:
if_2 goto Debilitate
goto AttackBranch

Debilitate:
calculate Period add 1
put prep %2 %3
goto Attack

DebilWait:
pause 2
DebilCast:
match Attack You gesture
match Attack You don't have a spell prepared
match DebilWait You can't
match DebilWait at what?
put cast
matchwait

CheckExp:
echo
echo * * * Skill for current weapon.
echo

match CheckExpExit mind lock
match CheckExpExit nearly locked
match CheckExpContinue EXP HELP
put sk %1
matchwait 3

CheckExpContinue:
calculate Period clear
pausepart 5
goto Attack

CheckExpExit:
echo
echo * * * The skill designated "%1" is locked.
echo
exit

ArrangeDead:
action [You feel fully prepared to cast your spell] clear
match HoldingForEnemy Arrange what?
match ArrangeDead You arrange
match ArrangeDead You begin to arrange
match ArrangeDead You continue arranging
match SkinDead You complete arranging
put arrange
matchwait 3

SkinDead:
put skin
pausetext 2 roundtime
put loot
action [You feel fully prepared to cast your spell] goto DebilCast
waitfor Roundtime
goto Attack

HoldingForEnemy:
	match Attack melee range on you
	match Attack balanced and
	match Attack balance and
	match Attack balanced with
	match Attack balance with
	echo
	echo * * * Searching for targets...
	echo
	matchwait 10
	goto HoldingForEnemy

EarlyEnd:
echo * * * Script overridden, exiting...
put rel spell
exit
