setvariable TotalLockpicks %1 %2

buypick:
echo * * * Buying.
put buy ord lockpick
waitfor Despite the rarity of this
goto negotiate

wait_negotiate:
pause 1
negotiate:
echo * * * Negotiating.
match wait_negotiate I'll accept no less than
match stowpick hands over your lockpick
put offer %2
matchwait

stowpick:
echo * * * Putting away.
put put my lockpick on my ring
waitfor You put

checknumber:
calculate TotalLockpicks dec
echo * * * Checking remaining lockpicks... number is %TotalLockpicks.
if TotalLockpicks > 0 goto buypick
goto exit

exit:
echo * * * Exiting.
exit
