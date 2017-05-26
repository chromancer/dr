	echo * * *
	echo * * * Strawberry suite. Auxiliary combat training script.
	echo * * *
	echo * * * DO NOT USE AT LEVEL!
	echo * * *
	echo * * * Begin this script in any room where enemies spawn.
	echo * * * First variable is the primary enemy you're using.
	echo * * *

	setvariable SmallEdged kris
	setvariable SmallBlunt hammer
	setvariable LightThrown bola
	setvariable Polearm spear
	setvariable HeavyThrown spear
	setvariable Bow shortbow

CheckHands:
	match WearShield shield
	match EmptyHands You glance down to see
	match GetShield You glance down at your empty hands
	put glance
	matchwait 2
	goto GetShield

EmptyHands:
	put stow left
	pause 1
	put stow right
	pause 1

GetShield:
	put get shield
	pause 1

WearShield:
	put wear shield
	pause 1

StanceChange:
	put stance parry
	pausetext 3 You change your

LightThrown:
	put get my %LightThrown
	callwith throw_disable %LightThrown lt yes
	put stow my %LightThrown
	pause 2

Polearm:

	put get my %Polearm
	callwith fn polearm %1
	pause 1
	put get %Polearm
	pause 1
	put stow my %Polearm
	pause 10

Brawling:

	callwith fle brawling %1
	pause 2

HeavyThrown:

	put get my %HeavyThrown
	callwith throw_disable %HeavyThrown ht yes
	put stow my %HeavyThrown
	pausetext 3 You stow

BeginArchery:

	put stance evasion
	pausetext 3 You change your
	put remove my %Bow
	pausetext 3 You sling a
	callwith fbow
	pause 2
	put wear my %Bow
	pause 2
	call getarr
	pause 2

End:

	echo
	echo * * *
	echo * * * This script will exit in 5 seconds.
	echo * * *
	echo

	pause 1

	exit
