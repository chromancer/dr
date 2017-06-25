echo * * * Performing the work order.

setvariable RemainingWorkpieces %1
setvariable CodexRequired 0

if_3 goto Codex
goto Make

Codex:
calculate CodexRequired inc
goto Make

Make:
if RemainingWorkpieces == 0 goto OrderDone
callwith cshape %2 %CodexRequired
echo * * * Workpiece complete.
calculate RemainingWorkpieces dec
echo * * * %RemainingWorkpieces workpieces remain.
pause 1
put get logbook
waitfor You get
put bundle my %2 with my logbook
waitfor then bundle it up for delivery
put put my logbook in my ruck
goto Make

OrderDone:
put get logbook
waitfor You get
put bundle my %2 with my logbook
echo * * * The required number of pieces are done.
exit
