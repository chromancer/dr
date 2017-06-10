setvariable usedcambrinth armband
setvariable MoonAlign 1

if_1 goto removecam
goto instructions

removecam:
echo * * * Casting with cambrinth for a skill ('%1')...
pause 1

precast:
echo * * * Casting a spell and charging cambrinth...
match cast already fully prepared
match cast already prepared
match charge raise one hand before you
match charge Your eyes darken to black as a starless night
match charge Turning your focus solemnly inward
match charge Heatless orange flames blaze between your fingertips
put prep %2 %4
matchwait

charge:
pause 1
put charge my %usedcambrinth %3
waitfor you feel fully prepared
put charge my %usedcambrinth %3
waitfor roundtime
put invoke my %usedcambrinth
waitfor roundtime

cast:
put cast
pausetext 1 [is on the wrong side of Elanthia] goto SetMoonAlign
put rel rf
goto expcheck

ResetMoonAlign:
	if %MoonAlign == 0 goto LabelError
	echo * * * Checking moons for correct alignment...
	pause 1
	if %katambavisible == 1 goto SetMoonAlignK
	echo * * * Katamba is not visible.
	pause 1
	if %yavashvisible == 1 goto SetMoonAlignY
	echo * * * Yavash is not visible.
	pause 1
	if %xibarvisible == 1 goto SetMoonAlignX
	echo * * * Xibar is not visible.
	pause 1
	echo * * * No moons are visible.
	goto MoonEnd

SetMoonAlignK:
	echo * * * Aligning to Katamba.
	put align moon sever
	waitfor roundtime
	put align moon katamba
	goto precast

SetMoonAlignY:
	echo * * * Aligning to Yavash.
	put align moon sever
	waitfor roundtime
	put align moon yavash
	goto precast

SetMoonAlignX:
	echo * * * Aligning to Xibar.
	put align moon sever
	waitfor roundtime
	put align moon xibar
	goto precast

expcheck:
match precast EXP HELP
match end mind lock
match end nearly locked
put exp %1
matchwait

end:
echo * * * '%1' is locked. Exiting...
exit

MoonEnd:
echo * * * Ending early due to no moons.
exit

instructions:
echo
echo * * *
echo * * * Cambrinth script variables.
echo * * * 1) Skill
echo * * * 2) Spell
echo * * * 3) Charge Amount
echo * * * 4) Prep Amount
echo * * * Name of cambrinth item is changed in the script.
echo * * *
exit

LabelError:
echo * * * Something unexpected happened. Exiting.
exit
