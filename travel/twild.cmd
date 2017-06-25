match mid2wild [Middens, Crossbow Bend]
match wild2mid [Wilderness, Dry Streambed]
put look
matchwait 2
exit

mid2wild:
callwith travel kaerna
move ne
move go gate
move nw
move nw
move n
move e
move e
move n
move n
move ne
move n
move e
move e
move ne
move go pa
put search
move go tr
put search
move go tr
put search
move go tr
put search
move go tr
put search
move go spot
exit
echo * * *
echo * * * Into the wilderness.
echo * * *
pause 1
exit

wild2mid:
move go tr
move n
move n
put search
move go pa
move sw
move ne
move sw
move w
move w
move s
move sw
move s
move s
move w
move w
move s
move se
move se
callwith travel cross
pause 1
callwith ct obs
pause 1
echo * * *
echo * * * Now at Crossbow Bend.
echo * * *
pause 1
exit
