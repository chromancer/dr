#Spin
# Parameters - .spin <wheel or distaff> <type fiber> <thread weight> <container>

  put get %2 fiber from my %4
  pause 1
  match End1 unable to wrap that much fiber
  match End2 referring
  match Begin You carefully wrap some
put put my fiber on %1

Begin:
#  pause 1
#  put look my %1
#waitfor appears adjusted to produce
  pause 1
  put ADJUST %1 to %3
waitfor Roundtime:

Spin:
  pause 1
  match End You need a free hand
  match End fibers placed
  match Turn A counter-twist in the fiber
  match Turn Individual strands of the fiber
  match Push One half of the fiber bundle begins
  match Push Slowly the fiber bundle
  match Clean a dull shade from grime
  match Spin Roundtime
  put spin %1
matchwait

Turn:
  pause 1
  match End You need a free hand
  match End fibers placed
  match Turn A counter-twist in the fiber
  match Turn Individual strands of the fiber
  match Push One half of the fiber bundle begins
  match Push Slowly the fiber bundle
  match Clean a dull shade from grime
  match Spin Roundtime
  put turn %1
matchwait

Push:
  pause 1
  match End You need a free hand
  match End fibers placed
  match Turn A counter-twist in the fiber
  match Turn Individual strands of the fiber
  match Push One half of the fiber bundle begins
  match Push Slowly the fiber bundle
  match Clean a dull shade from grime
  match Spin Roundtime
  put push %1
matchwait

Clean:
  pause 1
  match End You need a free hand
  match End fibers placed
  match Turn A counter-twist in the fiber
  match Turn Individual strands of the fiber
  match Push One half of the fiber bundle begins
  match Push Slowly the fiber bundle
  match Clean a dull shade from grime
  match Spin Roundtime
  put clean %1
matchwait

End:
  pause 1
  ECHO
  ECHO You have completed making thread
  ECHO
exit

End1:
  pause 1
  ECHO 
  ECHO Can only use 100 Yd fiber on distaff, 400 on wheel.
  ECHO Cut your fiber and try again.
  ECHO
exit

End2:
  pause 1
  ECHO 
  ECHO You dont appear to have any fiber to use.
  ECHO 
exit