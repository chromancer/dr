CheckHands:
	match ShieldInHand shield
	match HandsAreEmpty You glance down at your
	put glance

CheckShieldWorn:
	match
	match StowBoth shield
	match CheckHeld wearing anything like that
	put inv left arm shield
	matchwait

if %lefthanditem == "Empty" and %righthanditem == "Empty"
	begin
	echo * * * Block success
	goto Exit
	end
goto Fail

Fail:
echo * * * Block failure
goto Exit

CheckLeft:
if %lefthanditem == "an ordinary shield"
	goto StowRight
goto CheckRight

StowBoth:
	put stow left
	put stow right

Exit:
exit
