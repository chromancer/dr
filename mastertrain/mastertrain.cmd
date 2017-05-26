echo * * *
echo * * * Strawberry suite. Master Trainer script.
echo * * *
echo * * * This script requires a few other scripts to run.
echo * * * Required scripts are (in order):
echo * * *
echo * * * "CT"
echo * * * "Braid"
echo * * * "Collect"
echo * * * "Ravenscourt"
echo * * * "Climbing"
echo * * *



Position:

	callwith ct bank

Begin:

	pause 1
	run perform folk quiet

Scholarship:

	echo * * * Beginning Scholarship segment.
	pause 1
	callwith ravenscourt
	pause 1

Athletics:

	echo * * * Beginning Athletics segment.
	pause 1
	callwith climbing
	pause 1

Perception:

	callwith ct obs

	callwith collect [rock] perception

Appraisal:

	call zills
	pause 1

Locksmith:

	callwith locksmith careful blind
	pause 1

Mech:

	callwith braid grass urn
	pause 1

End:

	echo
	echo * * *
	echo * * * This script will exit in 5 seconds.
	echo * * *
	echox

	exit

StartError:

	echo
	echo * * *
	echo * * * You need to begin this script at a valid location.
	echo * * *
	echo

	goto End
