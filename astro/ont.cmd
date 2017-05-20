Observe:
match Observe You see nothing regarding the future
match PiercingGaze Clouds obscure the sky where
match WaitForPonder learned something useful
match WaitForPonder you still learned from
match WaitForPonder unable to make use of this latest observation
match WaitForPonder you still learned more of the future
match Exit many futures cloud
put observe %1
matchwait

WaitForPonder:
waitfor sufficiently pondered
goto Observe

PiercingGaze:
put prep pg 8
waitfor you feel fully prepared
put cast
goto Observe

Exit:
echo 
echo * * *
echo * * * Completed all useful observations of this body.
echo * * * Exiting and ringing a bell.
echo * * *
echo 
exit