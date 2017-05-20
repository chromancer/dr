bank2court:
echo
echo * * *
echo * * * Heading to Raven's Court from the Crossing Bank.
echo * * *
echo

move sw
move go bri
move sw
move w
move w
move w
move w
move nw
move n
move go large building

counter set 0
setvariable courtlock no
0:
setvariable art raven
goto %courtlock
1:
move e
move climb step
setvariable art mermaid
goto %courtlock
2:
move climb step
move w
move n
move climb step
move climb stair
move s
setvariable art sculpture
goto %courtlock
3:
setvariable art painting
goto %courtlock
4:
setvariable art carving
goto %courtlock
5:
setvariable art statue
goto %courtlock
6:
setvariable art "second painting"
goto %courtlock
7:
move w
setvariable art painting
goto %courtlock
8:
setvariable art triptych
goto %courtlock
9:
setvariable art statue
goto %courtlock
10:
setvariable art figurine
goto %courtlock
11:
setvariable art "second painting"
goto %courtlock
12:
move s
setvariable art cylinder
goto %courtlock
13:
setvariable art sculpture
goto %courtlock
14:
setvariable art statue
goto %courtlock
15:
setvariable art painting
goto %courtlock
16:
setvariable art "second painting"
goto %courtlock
17:
move s
setvariable art sphere
goto %courtlock
18:
setvariable art panel
goto %courtlock
19:
setvariable art painting
goto %courtlock
20:
setvariable art canvas
goto %courtlock
21:
setvariable art statue
goto %courtlock
22:
move e
setvariable art painting
goto %courtlock
23:
setvariable art diorama
goto %courtlock
24:
setvariable art figure
goto %courtlock
25:
setvariable art statue
goto %courtlock
26:
setvariable art "second painting"
goto %courtlock
27:
move w
move n
move n
move ne
move climb stair
move climb step
move s
echo
echo * * *
echo * * * Done.
echo * * *
echo
deletevariable courtlock
deletevariable art
goto court2bank

no:
counter add 1
match courtlocked mind lock
match courtlocked nearly locked
match study Overall state of
put skill schol
matchwait

yes:
counter add 1
goto %c

courtlocked:
setvariable courtlock yes
goto %c

study:
match study ...wait
match pause Roundtime
put study %art
matchwait

pause:
pause
goto %c

court2bank:
echo
echo * * *
echo * * * Heading to the Crossing Bank from Raven's Court.
echo * * *
echo
move go wooden door
move south
move southeast
move east
move east
move east
move east
move ne
move go bri
move ne
exit
