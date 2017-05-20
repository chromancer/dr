echo * * *
echo * * * Strawberry telescope script.
echo * * *

waitfor

Center:
match PainError The pain is too much
match NightError foiled by the darkness
match DayError foiled by the daylight
match HorizonError turns up fruitless
match NonsenseError What did you want to center the telescope on?
match Open You'll need to open it to make any use of it
match Observe You redirect your efforts with the telescope
put center tele on %1
matchwait 1

Observe:
match Success You believe you've learned all that you can
match Success Too many futures cloud your mind
match Center You see nothing regarding the future
match PiercingGaze Clouds obscure the sky where
match PredictState learned something useful
match PredictState you still learned from
match PredictState you still learned more of the future
match PredictState unable to make use of this latest observation
match Center peer aimlessly
put peer tele
matchwait
waitfor roundtime

PredictState:
waitfor sufficiently pondered
goto Center

Open:
put open my tele
goto Center

PiercingGaze:
put prep pg 30
waitfor you feel fully prepared
put cast
goto Center

Success:
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
echo * * * That heavenly body either can't be found at this time, or isn't recognized.
goto Exit

PainError:
echo * * * Wounds must be healed before telescope use.
goto Exit

LabelError:
echo * * * Unknown error (possibly label error).
goto Exit

Exit:
exit
