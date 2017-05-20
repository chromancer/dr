findarrow:
match ImmediateEnd Obvious paths:
match getarrow arrow
put look
matchwait

getarrow:
match exit from inside your
match stowarrow You pick up
match Unload You must unload the
match stowarrow You are already holding that
match stowarrow You pull a
put get arrow
matchwait

stowarrow:
put stow arrow
pausepart 1
goto getarrow

Unload:
put unload
goto exit

exit:
put stow arrow
echo * * * No accessible arrows remain.
exit

ImmediateEnd:
echo * * * I don't see any arrows to pick up.
exit