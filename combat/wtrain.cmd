	echo * * *
	echo * * * Strawberry suite. Combat training script.
	echo * * *
	echo * * * Begin this script in any room where enemies spawn.
	echo * * * First variable is the primary enemy you're using.
	echo * * *

	setvariable SmallEdged kris
	setvariable SmallBlunt bola

	setvariable TargetSpell pd
	setvariable TargetMana 12

	setvariable DebiSpell dazzle
	setvariable DebiMana 10

	setvariable UsedCambrinth armband

	setvariable ShadowsPrepMana 10
	setvariable ShadowsChargeMana 10

# SHIELD PROBLEMS WHO'S GOT EM

BeginTraining:

# Training regimen begins here.

SmallEdged:

		echo
		echo * * *
		echo * * * Now training small edged.
		echo * * *
		echo

		put stance evasion
		pause 1
		put get my %SmallEdged
		callwith fn [Small Edged] %1
		put stow my %SmallEdged
		pause 3

DebilMagic:

	echo
	echo * * *
	echo * * * Now training debilitation.
	echo * * *
	echo

	put stance custom
	pause 1
	callwith mdeb %DebiSpell %DebiMana %1

SmallBlunt:

	echo
	echo * * *
	echo * * * Now training small blunt.
	echo * * *
	echo

	put stance evasion
	pause 1
	put get my %SmallBlunt
	callwith fle [Small Blunt] %1
	put stow my %SmallBlunt
	pause 2

PreStealthShadows:
	echo * * * Phase change!
	put stance custom
	pause 2
	echo * * * Casting shadows for stealth.
	match ShadowsCast already fully prepared
	match ShadowsCast already prepared
	match ShadowsCharge raise one hand before you
	match ShadowsCharge Your eyes darken to black as a starless night
	match ShadowsCharge Turning your focus solemnly inward
	match ShadowsCharge Heatless orange flames blaze between your fingertips
	put prep shadows %ShadowsPrepMana
	matchwait
ShadowsCharge:
	pause 1
	echo * * * Charging shadows...
	put charge my %UsedCambrinth %ShadowsChargeMana
	waitfor you feel fully prepared
	echo * * * Charging shadows...
	put charge my %UsedCambrinth %ShadowsChargeMana
	waitfor roundtime
	echo * * * Invoking for shadows...
	put invoke my %UsedCambrinth
	waitfor roundtime
ShadowsCast:
	echo * * * Casting shadows.
	put cast
	pausepart 1

Stealth:

	echo * * * Now training stealth.

	call hide

TargetedMagic:

	echo * * * Now training targeted magic.

	put stance evasion
	callwith tm %TargetSpell %TargetMana %1
	pause 1
	put stance custom

End:

	echo
	echo * * *
	echo * * * This script will exit in 5 seconds.
	echo * * * Exiting and ringing a bell.
	echo * * *
	echo

	pause 1

	exit
