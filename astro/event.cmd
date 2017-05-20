Observe:
match Success You believe you've learned all that you can
match Success Too many futures cloud your mind
match Center You see nothing regarding the future
match PiercingGaze Clouds obscure the sky where
match PredictState lingering sense of dissatisfaction
match PredictState You feel it is too soon
match Observe peer aimlessly
put study sky
matchwait
waitfor roundtime

PredictState:
put predict state event
pause 10
goto Observe

PiercingGaze:
put prep pg 30
waitfor you feel fully prepared
put cast
goto Observe

Success:
put predict state all
echo
echo * * *
echo * * * Prediction pools have been filled or nothing else can be learned.
echo * * *
echo
goto Exit

NightError:
echo * * * That heavenly body can't be found at night.
goto Exit

DayError:
echo * * * That heavenly body can't be found during the day.
goto Exit

HorizonError:
echo * * * That heavenly body is not above the horizon.
goto Exit

NonsenseError:
echo * * * That heavenly body can't be found at night.
goto Exit

Exit:
exit
