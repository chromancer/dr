echo
echo * * *
echo * * * TM loop with periodic experience display.
echo * * *
echo

setvariable Period 0

matchstore Arrange balance]
matchstore Arrange balanced]
matchstore Arrange balance.]
matchstore Arrange balanced.]
matchstore CheckForEnemy pattern dissipates with the loss of your target
matchstore ReleaseSpell Your target pattern dissipates because

Target:
match ReleaseSpell Your target pattern dissipates
match ReleaseSpell with the loss of your target
match ReleaseSpell There is nothing else to face
match ReleaseSpell But you're already preparing a spell
match PauseTarget What are you trying to attack
match FaceNext You're not engaged to anything
match Cast Your formation of a targeting pattern
put target do 15 at %1
matchwait

PauseTarget:
pause 2
goto Target

FaceNext:
put face %1
goto Target

Cast:
put cast
storewait 2
goto Target

ReleaseSpell:
put rel sp
pausepart 5
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
