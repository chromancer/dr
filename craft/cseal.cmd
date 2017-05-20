#Seal
#  usage : .seal <sealitem> <sealcontainer> <sealbookcontainer>
#    where <sealitem> is the item to be sealed like gloves, cowl, etc.
#          <sealcontainer> is where you keep tools and the items to be sealed.
#          <sealbookcontainer> is where you keep the tailoring book turned 
#                              to the right page for sealing items.

Start:
  put get tailoring book from my %3
waitfor You get
  put study my book
waitfor Roundtime
  put put my tailoring book in my %3
waitfor You put
  put get %1 from my %2
waitfor You get

Wax:
  pause 1
  put get my wax from my %2
waitfor You get
  pause 1
  put apply my wax to my %1
  match Done You cannot figure out
  match Done material shows improved signs of durability and wear resistance
  match Slickstone Roundtime
matchwait

Slickstone:
  pause 1
  put put my wax in my %2
waitfor You put
  put get my slickstone from my %2
waitfor You get
  put rub my %1 with my slickstone
waitfor Roundtime
  pause 1
  put put my slickstone in my %2
waitfor You put
goto Wax

Done:
  pause 1
  put put my wax in my %2
echo -------------------------------
echo =  One %1 has been sealed.
echo -------------------------------
exit