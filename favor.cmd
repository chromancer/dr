#favorcrossing

setvariable myGod Eluned
setvariable SafeLocation obs

echo
echo * * *
echo * * * Strawberry suite. Favor script.
echo * * *
echo 

if_1 goto CheckHands
goto BadStart

CheckHands:
echo * * * Checking carried...
echo
match EmptyHands You glance down to see
match Initialize You glance down at your empty hands
put glance
matchwait

EmptyHands:
pause 1
put stow left
put stow right
pause 1
echo * * * Objects stowed.
echo
goto Initialize

Initialize:
echo * * * Initializing variables...
setvariable RemainingFavors %1
echo
echo * * * Favor number is %1.
echo * * * Desired god is %myGod.
echo * * * Safety location is '%SafeLocation'.
echo

StartingLocation:
match AtRuins [Siergelde, Stone Grotto]
match NotAtRuins Obvious paths:
match NotAtRuins Obvious exits:
put look
matchwait

NotAtRuins:
echo * * * Proceeding to the ruins.
callwith ct ruins
goto SecondRuinsCheck

AtRuins:
echo * * * You're already at the ruins.
echo * * * (This script would have taken you there from any CT-compatible location.)
goto pray

SecondRuinsCheck:
match AtRuins [Siergelde, Stone Grotto]
match LocationError Obvious paths:
match LocationError Obvious exits:
put look
matchwait

LocationError:
echo * * * The script is failing for an unknown location-related reason.
echo * * * Double-check that you're in a CT-compatible location.
echo * * * Exiting and ringing a bell.
exit

pray:
echo * * * Let us pray.
pause 1
put kneel
put pray
pause 1
put pray
pause 1
put pray
pause 1
put say %myGod
pause 1
put stand
pause 1
put get %myGod orb
pause 1
move go arch
pause 1

puzzle:
echo * * * Checking which puzzle.
match plant plant
match sponge sponge
match jug jug
match tinders tinders
match vase vase
match GoOn bubbling pool
match look difficult
put look
matchwait

plant:
match plant shimy
match plant loosen
match open swift breeze moves into the room
put open window
matchwait

open:
put go window
goto puzzle

sponge:
put clean altar
pause 1
put climb stair
pause 1
put go door
pause 1
goto puzzle

jug:
put fill font
pause 1
put climb stair
pause 1
put go door
pause 1
goto puzzle

tinders:
put light candle
pause 1
put climb stair
pause 1
put go door
pause 1
goto puzzle

vase:
put get flower
pause 1
put go path
pause 1
goto puzzle

look:
put look

GoOn:
echo * * * Proceeding to a safe location to fill the orb.
callwith ct %SafeLocation

FillOrb:
echo * * * Filling orb...
match OrbIsPrepared You sense that your sacrifice is properly prepared.
match CheckSkill You sense, though, that your sacrifice is not yet fully prepared.
put hug my %myGod orb
matchwait 5

CheckSkill:
echo * * * Is more experience needed?
match GetExp 0/34
match FillOrb EXP HELP
put skill appraisal
matchwait

GetExp:
echo * * * Filling appraisal pool.
call zills
goto CheckSkill

OrbIsPrepared:
echo * * * Returning to the Temple.
callwith ct temple
pause 3
echo * * * Putting the orb on the altar...
put put my %myGod orb on altar
calculate RemainingFavors dec
if RemainingFavors == 0 goto EndScript
goto StartingLocation

EndScript:
echo * * * Returning to a safe location to end the script.
callwith ct %SafeLocation
echo
echo * * *
echo * * * Correct amount of favors complete.
echo * * *
echo
exit

BadStart:
echo * * * This script requires you to use a number of favors as an argument.
echo * * * For example, type ".favor 2" to get 2 favors.
echo * * * Try again.
exit
