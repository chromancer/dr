echo
echo * * *
echo * * * TM loop with periodic experience display.
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
matchstore Arrange screams and collapses
matchstore CheckForEnemy pattern dissipates with the loss of your target
matchstore ReleaseSpell Your target pattern dissipates because

Target:
if Period == 5 goto CheckExp
calculate Period add 1
match ReleaseSpell Your target pattern dissipates
match ReleaseSpell with the loss of your target
match ReleaseSpell There is nothing else to face
match ReleaseSpell But you're already preparing a spell
match PauseTarget What are you trying to attack
match FaceNext You're not engaged to anything
match Cast Your formation of a targeting pattern
put target %1 %2
matchwait

PauseTarget:
pause 2
goto Target

FaceNext:
put face next
pause 1
goto Target

Cast:
put cast
storewait 2
goto Target

CheckExp:
echo
echo * * * Skill for TM.
match Exit mind lock
match Exit nearly locked
match PeriodClear EXP HELP
put sk tm
matchwait 3

PeriodClear:
calculate Period clear
goto Target

ReleaseSpell:
put rel sp
pausepart 1
goto CheckForEnemy

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
goto CheckForEnemy

CheckForEnemy:
match Target range on you
match Target balanced and
match Target balance and
match Target balanced with
match Target balance with
match Target advance on you
echo * * * TM is searching for targets...
matchwait 20
goto CheckForEnemy

Exit:
echo * * * Targeted magic is mind locked.
exit
