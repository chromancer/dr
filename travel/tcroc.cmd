ChooseAction:
	match ferry2swamp A slab of downed cedars, lashed together, rides upon the Faldesu River
	match swamp2ferry Dirt meets stone here as a road begins its winding journey north
	match leavecroc [The Marsh, In The Water]
	put look
	matchwait 2
	exit

ferry2swamp:
	echo * * * Going to crocs.
	move s
	move s
	move se
	move e
	move e
	move e
	move e
	move e
	move go bri
	move e
	move e
	move se
	move se
	move e
	move e
	move e
	move e
	move nw
	echo * * * Arrived.
	exit

swamp2ferry:
	move se
	move w
	move w
	move w
	move w
	move nw
	move nw
	move w
	move w
	move go bri
	move w
	move w
	move w
	move w
	move w
	move nw
	move n
	move n
	echo * * * Arrived.
	exit

leavecroc:

setVariable move look
counter set 0

MoveMatch:
counter add 1
	match MoveMatch ...wait
	match MoveMatch you may only
	match RetMove engaged
	match RetMove While in combat
	match ShackMatch You also see a ruined shack
	match Moverandom10 You can't go there
	match Moverandom10 can't swim in that direction
	match GoReed Obvious
	put %move
	matchwait

RetMove:
match RetMove ...wait
match RetMove you may only
match RetMove You retreat back to pole range.
match MoveMatch You are already as far away as you can get!
match MoveMatch You retreat from combat.
put retreat
matchwait

ShackMatch:
echo * * * Found the shack.
move w
move nw
goto GoReed

MoveRandom1:
setvariable move n
goto MoveMatch

MoveRandom2:
setvariable move ne
goto MoveMatch

MoveRandom3:
setvariable move e
goto MoveMatch

MoveRandom4:
setvariable move se
goto MoveMatch

MoveRandom5:
setvariable move s
goto MoveMatch

MoveRandom6:
setvariable move sw
goto MoveMatch

MoveRandom7:
setvariable move w
goto MoveMatch

MoveRandom8:
setvariable move nw
goto MoveMatch

MoveRandom9:
setvariable move n
goto MoveMatch

MoveRandom10:
counter set 1
goto MoveRandom1

GoReed:
match MoveRandom%c I could not find what you were referring to.
match MoveRandom%c What were you referring to?
match RetReed While in combat
match RetReed You are engaged
match End The Marsh, Stone Road
match GoReed ...wait
match GoReed you may only
put go reed
matchwait

RetReed:
match RetReed ...wait
match RetReed you may only
match RetReed You retreat back to pole range.
match GoReed You are already as far away as you can get!
match GoReed You retreat from combat.
put retreat
matchwait

End:
echo
echo * * *
echo * * * Found the stone road. Exiting.
echo * * *
echo
exit
