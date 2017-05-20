echo
echo * * *
echo * * * Thrown weapon with disabling spell and period experience check.
echo * * *
echo

setvariable Period 0

matchstore Arrange screams one last time and lies still
matchstore Arrange falls to the ground and lies still
matchstore Arrange shudders and then suddenly stops all movement
matchstore Arrange collapses with a heavy thud
matchstore Arrange growls one last time and collapses
matchstore Arrange until it ceases all movement
matchstore Arrange lets loose a blood-curdling howl and falls into a heap
matchstore Arrange lets loose a blood-curdling howl and goes still
matchstore Arrange thrashes about wildly for a few seconds, then lies still
matchstore Arrange shudders, then goes limp
matchstore Arrange coils and uncoils rapidly before expiring
matchstore Arrange closing its eyes forever
matchstore Arrange growls low and dies
matchstore Arrange and lies still
matchstore HoldingForEnemy There is nothing else to face
matchstore GetSpear Roundtime

Attack:
if Period == 0 goto Debilitate
if Period == 4 goto CheckExp
calculate Period add 1
put lob
storewait 3
goto GetSpear

GetSpear:
put get %1
pausepart 5
goto Attack

Debilitate:
calculate Period add 1
put prep sleep 8
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
put loot %3
pause 1

GetThrown:
put get %1
goto HoldingForEnemy

HoldingForEnemy:
match Attack melee range on you
match Attack balanced and
match Attack balance and
echo * * * Holding until next attacker reaches melee range...
matchwait 7
goto HoldingForEnemy
