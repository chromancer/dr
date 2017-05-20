match OpenVault This pivotal junction connects many of the Crossing's key locations.
match CloseVault A sturdy vault, set in the back wall, stands ready for your use.
put look
matchwait 4
goto Fail

OpenVault:
move go square
move go door
move go iron arch
put pull lev
move go door
put open vault
echo * * * Vault is ready.
exit

CloseVault:
put close vault
move go door
move go arch
move out
move out
echo * * * Back on the Trace.
exit

Fail:
echo * * * Wrong location.
exit