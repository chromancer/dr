match wg2outcrop Well-worn paths lead through a grove of trees
match outcrop2wg A huge rocky outcrop breaks through
put look
matchwait 2
exit

wg2outcrop:
move go path
move w
move w
move nw
move w
move w
move nw
move w
move w
move sw
move w
move w
move nw
move nw
move w
move w
move nw
move w
move w
move go brook
move w
move w
move w
move sw
move w
move w
move w
move w
move climb trail
pause 1
echo * * * Now at the rocky outcrop. Exiting...
pause 1
exit

outcrop2wg:
move climb trail
move e
move e
move e
move e
move ne
move e
move go brook
move e
move e
move e
move e
move se
move e
move e
move se
move se
move e
move e
move ne
move e
move e
move se
move e
move e
move se
move e
move e
move go path
pause 1
echo * * * Now at Crossing West Gate. Exiting...
pause 1
exit