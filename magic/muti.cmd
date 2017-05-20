echo 
echo * * *
echo * * * Focusing moonbeams...
echo * * *
echo 

cast:
put prep %1 %2
waitfor you feel fully prepared
put cast %3
pausepart 5

expcheck:
match cast EXP HELP
match end mind lock
match end nearly locked
put sk util
matchwait

end:
echo 
echo * * *
echo * * * Utility magic is locked. Exiting.
echo * * *
echo 
exit