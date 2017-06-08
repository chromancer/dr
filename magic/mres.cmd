echo
echo * * *
echo * * * Research.
echo * * *
echo

setvariable resmana 16

if_1 goto gaf

echo
echo * * *
echo * * * What would you like to research? (use RESEARCH LIST to see your options)
echo * * * Usage: .res fundamental augmentation stream warding utility
echo * * *
echo
goto quit

research:
	pause
	match research However, there is still more to learn
	match gaf You require some special means
	match gaf Your eyes briefly darken.
	match nextmagic Breakthrough!
	match error Usage: RESEARCH
	put research %1 300
	matchwait

nextmagic:
	shift
	if_1 goto research
	goto quit

gaf:
	put prep gaf %resmana
	pause 1
	put charge my arm 32
	pause 1
	put invoke my arm
	waitfor You feel fully prepared to cast your spell.
	put cast
	goto research

error:
	echo * * * ''%1' is not a valid research option.

quit:
echo
echo * * *
echo * * * Exiting magical research.
echo * * *
echo
	exit
