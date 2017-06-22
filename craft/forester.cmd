action "You notice an unusual smell drifting through the area." goto Danger
action "A monotonous buzzing sound fills the air." goto Danger

setvariable Period 0
setvariable Hatchet hatchet
setvariable Woodbag rucksack

PreChop:
save PreChop
if Period == 2 goto Danger
goto Chop

Chop:
save Chop
calculate Period add 1
match PreChop sending chips of bark flying.
match PreChop working to cut a wedge near its base.
match PreChop cut deep grooves into the tree's bark.
match PreChop Loud thunks reverberate as
match PreChop Bits of bark and wood dust fill the air
match PreChop into the trunk looming before you
match PreGather One final blow sends the trunk
match PreGather The tree wobbles, and collapses
put chop tree
matchwait

PreGather:
save PreGather
if Period == 2 goto Danger
goto Gather

Gather:
save Gather
calculate Period add 1
match StowStick stick away from the remains of the tree
match StowLimb limb away from the remains of the tree
match StowBranch branch away from the remains of the tree
match StowLog log away from the remains of the tree
match Gather but are unable to cut free any wood
match Gather you cleave lumber from the fallen tree.
match Gather The fallen tree's thick bark
match NextTree sending chips of bark flying.
match NextTree working to cut a wedge near its base.
match NextTree cut deep grooves into the tree's bark.
match NextTree Loud thunks reverberate as
match NextTree Bits of bark and wood dust fill the air
match NextTree into the trunk looming before you
put chop tree
matchwait

Danger:
put watch forest danger
calculate Period clear
goto %s

StowStick:
put put %1 stick in my %Woodbag
goto PreGather

StowLimb:
put put %1 limb in my %Woodbag
goto PreGather

StowBranch:
put put %1 branch in my %Woodbag
goto PreGather

StowLog:
put put %1 log in my %Woodbag
goto PreGather

NextTree:
echo * * * You've moved onto the next tree.
exit

LabelError:
echo * * * The script has done something strange...
pause 1
echo * * * Exiting.
exit
