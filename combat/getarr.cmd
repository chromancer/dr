findarrow:
match ImmediateEnd Obvious paths:
match getarrow %1
put look
matchwait

getarrow:
match exit from inside your
match stowarrow You pick up
match getarrow You grab hold
match Unload You must unload the
match stowarrow You are already holding that
match stowarrow You pull a
match stowarrow You pull your
match stand stand up
match stand standing
put get %1
matchwait

stand:
put stand
goto getarrow

stowarrow:
put stow %1
pausepart 1
goto getarrow

Unload:
put unload
goto exit

exit:
put stow %1
echo * * * No accessible %1s remain.
exit

ImmediateEnd:
echo * * * I don't see any %1s to pick up.
exit
