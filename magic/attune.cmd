percloop:
put perc yavash
waitfor roundtime
pausepart 5
gosub expcheck
put perc katamba
waitfor roundtime
pausepart 5
gosub expcheck
put perc xibar
waitfor roundtime
pausepart 5
gosub expcheck
put perc moonlight
waitfor roundtime
pausepart 5
gosub expcheck
put perc perception
waitfor roundtime
pausepart 5
gosub expcheck
put perc psychic
waitfor roundtime
pausepart 5
gosub expcheck
put perc enlightened geometry
waitfor roundtime
pausepart 5
gosub expcheck
put perc mana
waitfor roundtime
pausepart 5
gosub expcheck
put perc planets
waitfor roundtime
pausepart 5
gosub expcheck
put perc watchers
waitfor roundtime
pausepart 5
gosub expcheck
goto percloop

expcheck:
put sk attune
pausetext 1 [mind lock] goto exiting
return

exiting:
echo * * * Attunement locked. Exiting...
exit
