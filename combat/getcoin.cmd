findcoin:
match ImmediateEnd Obvious paths:
match getcoin coin
put look
matchwait

getcoin:
match getcoin You pick up
match exit You are already holding that
match exit You pull a
put get coin
matchwait

exit:
echo * * * No accessible coins remain.
exit

ImmediateEnd:
echo * * * I don't see any coins to pick up.
exit
