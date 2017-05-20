matchstore ArrangeDead collapses with a heavy thud
matchstore ArrangeDead growls one last time and collapses
matchstore ArrangeDead until it ceases all movement
matchstore ArrangeDead falls to the ground and lies still
matchstore ArrangeDead lets loose a blood-curdling howl and falls into a heap
matchstore ArrangeDead lets loose a blood-curdling howl and goes still
matchstore ArrangeDead closing its eyes forever
matchstore ArrangeDead lurches forward and collapses
matchstore ArrangeDead screams and collapses
matchstore waitforattack There is nothing else to face

combatloop:
save "combatloop2"
put bob
storewait 2

combatloop2:
save "combatloop3"
put punch
storewait 2

combatloop3:
save "combatloop4"
put kick
storewait 2

combatloop4:
save "combatloop5"
put circle
storewait 2

combatloop5:
save "combatloop6"
put slap
storewait 2

combatloop6:
save "combatloop7"
put elbow
storewait 2

combatloop7:
save "combatloop8"
put gouge
storewait 2

combatloop8:
save "combatloop"
put claw
storewait 2

goto combatloop

ArrangeDead:
echo *** Arranging... ***
match CheckForEnemy Arrange what?
match ArrangeDead You arrange
match ArrangeDead You begin to arrange
match ArrangeDead You continue arranging
match SkinDead You complete arranging
put arrange
matchwait 1

SkinDead:
echo *** Skinning and bundling... ***
put skin
pausetext 2 roundtime
goto CheckForEnemy

HoldingForEnemy:
echo *** No targets present. Holding pattern engaged. ***
waitfor range on you
goto Cast1

CheckForEnemy:
echo *** Target? ***
match combatloop You (
match combatloop You turn
put assess silently
put face next
matchwait 3
goto HoldingForEnemy
