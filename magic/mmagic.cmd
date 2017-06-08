echo
echo * * *
echo * * * Master (passive) magic training script.
echo * * *

setvariable UtiSpell rf
setvariable UtiCharge 9
setvariable UtiPrep 11

setvariable WardSpell col
setvariable WardCharge 4
setvariable WardPrep 15

setvariable AugSpell seer
setvariable AugCharge 4
setvariable AugPrep 15

setvariable Attune attune

setvariable MoonAlign 1

SectionUtility:

	pause 3
	echo
	echo * * *
	echo * * * Utility...
	echo * * *
	echo
	pause 3
	callwith mcam utility %UtiSpell %UtiCharge %UtiPrep
	echo * * * Waiting for attunement.
	waitfor fully attuned

SetMoonAlign:
	if %MoonAlign == 0 goto SectionWarding
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
	echo * * * No moons are visible. Skipping Warding, due to the Cage of Light issue.
	goto SectionAugmentation

SetMoonAlignK:
	echo * * * Aligning to Katamba.
	put align moon sever
	waitfor roundtime
	put align moon katamba
	goto SectionWarding

SetMoonAlignY:
	echo * * * Aligning to Yavash.
	put align moon sever
	waitfor roundtime
	put align moon yavash
	goto SectionWarding

SetMoonAlignX:
	echo * * * Aligning to Xibar.
	put align moon sever
	waitfor roundtime
	put align moon xibar
	goto SectionWarding

SectionWarding:
	pause 3
	echo
	echo * * *
	echo * * * Warding...
	echo * * *
	echo
	pause 3
	callwith mcam warding %WardSpell %WardCharge %WardPrep
	echo * * * Waiting for attunement.
	waitfor fully attuned

SectionAugmentation:
	pause 3
	echo
	echo * * *
	echo * * * Augmentation...
	echo * * *
	echo
	pause 3
	callwith mcam augmentation %AugSpell %AugCharge %AugPrep

Attune:
	pause 3
	echo
	echo * * *
	echo * * * Attunement...
	echo * * *
	echo
	pause 3
	call %Attune

Exit:
	echo
	echo * * *
	echo * * * Exiting.
	echo * * *
	echo
	exit
