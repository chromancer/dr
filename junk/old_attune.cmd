percloop:
put perc yavash
waitfor roundtime
pausepart 5
put perc katamba
waitfor roundtime
pausepart 5
put perc xibar
waitfor roundtime
pausepart 5
put perc moonlight
waitfor roundtime
pausepart 5
put perc perception
waitfor roundtime
pausepart 5
put perc psychic
waitfor roundtime
pausepart 5
put perc enlightened geometry
waitfor roundtime
pausepart 5
put perc mana
waitfor roundtime
pausepart 5
put perc planets
waitfor roundtime
pausepart 5
put perc watchers
waitfor roundtime
pausepart 5
goto expcheck

expcheck:
match percloop EXP HELP
match exiting nearly locked
match exiting mind lock
put sk attune
matchwait

exiting:
echo * * * Attunement locked. Exiting...
exit
