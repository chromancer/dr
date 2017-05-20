features:
put choose 2 //sex
pause 1
put choose 1 //race
pause 1
put choose 1 //features
pause 1
put choose 7 //hair
pause 1
put choose 9 //haircolor
pause 1
put choose 2 //hair texture
pause 1
put choose 5 //eye color
pause 1
put choose 2 //eye shape
pause 1
put choose 4 //nose shape
pause 1
put choose 4 //face shape
pause 1
put choose 2 //skin color
pause 1
put choose 2 //figure
pause 1
put choose 2 //height
pause 1
put finish
pause 1
put choose 1
pause 1
put finish
pause 1
match end Age: 16
match rerollagain Wealth:
put info
matchwait

rerollagain:
echo * * *
echo * * * WE ARE GOING TO REROLL. DOUBLE CHECK THIS IS OKAY.
echo * * *
move Northwest
move North
move North
move North
move West
move West
move North
move GO Inn
pause 1
put check in reroll confirm
pause 1
put info
pause 5
put check in reroll confirm
goto features

end:
pause 1
echo * * *
echo * * * SUCCESS!
echo * * *