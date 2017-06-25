echo
echo * * *
echo * * * Crossbow/bow training script. Training '%1'...
echo * * *
echo

action [You feel fully prepared to cast your spell] put [cast]

if_1 goto begin
goto instructions

instructions:
echo * * * Fbow takes 1 or 3 arguments.
echo * * * First argument is skill to train (bow or crossbow).
echo * * * Second argument is a debilitation battle spell and third is the mana to prep it with.
echo * * * This would help you hit an enemy that is too high for you to hit normally.
goto exit

begin:
put stance evasion

loadarrow:
match afterload You reach into your
match afterload You load the
match afterload is already loaded
match noammo You don't have the proper ammunition readily available
put load
matchwait 2

afterload:
if_2 goto Debilitate
goto aimarrow

Debilitate:
put prep %2 %3
waitfor You raise one hand before you
goto aimarrow

aimarrow:
match aimagain There is nothing else to
match aimagain Face what
match waitforattack There is nothing else to face
match firearrow You think you have your
put aim
matchwait

aimagain:
pause 1
goto aimarrow

firearrow:
match ArrangeDead balance]
match ArrangeDead balanced]
match ArrangeDead balance.]
match ArrangeDead balanced.]
put fire
matchwait 1

goto expcheck

expcheck:
match expexit mind lock
match loadarrow EXP HELP
put sk %1
matchwait

waitforattack:
	match aimarrow range on you
	match aimarrow balanced and
	match aimarrow balance and
	match aimarrow balanced with
	match aimarrow balance with
	echo
	echo * * * Holding until next attacker appears...
	echo
	matchwait 10
	goto waitforattack

ArrangeDead:
action [You feel fully prepared to cast your spell] clear
match HoldingForEnemy Arrange what?
match ArrangeDead You arrange
match ArrangeDead You begin to arrange
match ArrangeDead You continue arranging
match SkinDead You complete arranging
put arrange
matchwait 3

SkinDead:
put skin
pausetext 1 roundtime
put loot
action [You feel fully prepared to cast your spell] put [cast]
waitfor Roundtime
goto Attack

noammo:
echo * * * Attempting to get bolts/arrows.
if %1 == "bow" goto getarrow
goto getbolt

getbolt:
callwith getarr bolt
goto noammostep

getarrow:
callwith getarr arrow
goto noammostep

noammostep:
pause 1
match afterload You reach into your
match afterload You load the
match afterload is already loaded
match noammoexit You don't have the proper ammunition readily available
put load
matchwait 2
goto noammoexit

noammoexit:
echo * * * No ammunition, exiting.
goto exit

expexit:
echo * * * '%1' is locked.
goto exit

exit:
echo * * * Fbow is exiting.
exit
