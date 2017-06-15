	echo * * *
	echo * * * Strawberry suite. Auxiliary combat training script.
	echo * * *
	echo * * * DO NOT USE AT LEVEL!
	echo * * *
	echo * * * Begin this script in any room where enemies spawn.
	echo * * *

	setvariable SmallEdged kris
	setvariable SmallBlunt hammer
	setvariable LightThrown bola
	setvariable Polearm spear
	setvariable HeavyThrown spear
	setvariable Bow bow
	setvariable Crossbow crossbow
	setvariable LargeEdged abassi

	setvariable DebilSpell sleep
	setvariable DebilMana 11

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

#LightThrown:
#	put get my %LightThrown
#	callwith throw_disable %LightThrown lt 1
#	put stow my %LightThrown
#	pause 2

LargeEdged:

	put get my %LargeEdged
	callwith fled le %DebilSpell %DebilMana
	pause 1
	put stow %LargeEdged
	pause 1

Polearm:

	put get my %Polearm
	callwith fn polearm %1
	pause 1
	put get %Polearm
	pause 1
	put stow my %Polearm
	pause 2

Brawling:

	callwith fled brawling
	pause 1

#HeavyThrown:
#
#	put get my %HeavyThrown
#	callwith throw_disable %HeavyThrown ht 1
#	put stow my %HeavyThrown
#	pausetext 3 You stow

BeginCrossbow:

	put stance evasion
	pausetext 3 You change your
	put get my %Crossbow
	pausetext 3 You get
	callwith fbow crossbow %DebilSpell %DebilMana
	pause 1
	put stow my %Crossbow
	pause 1
	callwith getarr bolt
	pause 1

BeginArchery:

	put stance evasion
	pausetext 3 You change your
	put remove my %Bow
	pausetext 3 You sling a
	callwith fbow bow
	pause 1
	put wear my %Bow
	pause 1
	callwith getarr arrow
	pause 1

PreEnd:
	put stance custom
	pause 1

End:

	echo
	echo * * *
	echo * * * This script will exit in 5 seconds.
	echo * * * Exiting and ringing a bell.
	echo * * *
	echo

	pause 1

	exit
