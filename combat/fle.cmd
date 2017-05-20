echo
echo * * *
echo * * * Melee fighting loop with periodic experience check.
echo * * * First argument: skill to check.
echo * * * Second argument: creature to loot.
echo * * *
echo

setvariable Period 0

matchstore ArrangeDead screams one last time and lies still
matchstore ArrangeDead falls to the ground and lies still
matchstore ArrangeDead shudders and then suddenly stops all movement
matchstore ArrangeDead collapses with a heavy thud
matchstore ArrangeDead growls one last time and collapses
matchstore ArrangeDead until it ceases all movement
matchstore ArrangeDead lets loose a blood-curdling howl and falls into a heap
matchstore ArrangeDead lets loose a blood-curdling howl and goes still
matchstore ArrangeDead thrashes about wildly for a few seconds, then lies still
matchstore ArrangeDead shudders, then goes limp
matchstore ArrangeDead coils and uncoils rapidly before expiring
matchstore ArrangeDead closing its eyes forever
matchstore ArrangeDead growls low and dies
matchstore ArrangeDead and lies still
matchstore ArrangeDead screams and collapses
matchstore HoldingForEnemy There is nothing else to face
matchstore Attack Roundtime

Attack:
if Period == 5 goto CheckExp
calculate Period add 1
put attack
storewait 3
goto Attack

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
match CheckForEnemy Arrange what?
match ArrangeDead You arrange
match ArrangeDead You begin to arrange
match ArrangeDead You continue arranging
match SkinDead You complete arranging
put arrange for skin
matchwait 3

SkinDead:
put skin
pausetext 2 roundtime
put loot %2
pause 2
goto CheckForEnemy

HoldingForEnemy:
echo * * * No valid targets: holding for range.
waitfor range on you
goto Attack

CheckForEnemy:
echo * * * Target check.
match Attack You (
match Attack You turn
put assess silently
put face next
matchwait 2
goto HoldingForEnemy