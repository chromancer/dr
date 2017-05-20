#Lighten
#  usage .lighten <item> <lightcontainer> <Tailorbookcontainer>
#    where <item> is the item to be lightened, gloves, shield, etc.
#          <lightcontainer> where tools and item starts.
#          <tailorbookcontainer> where the tailoring book is located.
#
# Note this script is set up for stormfront.  To make it run for the wizard, 
# change setvariable tooll tooltypes to save tooltypes.  Then change the line
# goto myl%tooll to goto myl%s.
#
# First thing you need is have needles with the proper thread already put on the
# needles in your LightContainer (PUT THREAD ON MY NEEDLE).  Note from what I can 
# tell fine thread works just fine for all reinforcing projects.  You dont need to
# use a thick or heavy thread on leather items to lighten them.  Also note that
# each Push of the needles will use 1 yard of thread.  You can use from 6 to 10 yards
# of thread per lightened item.  Maybe more for big armor items like leathers.
#
# Second have your tailoring book open to the correct page for armor Lightening in
# chapter 1 and in your LightBookContainer, and yes you can make this container the
# same as the one where your tools are at. 
#
# Third have the item to be reinforced in your LightContainer.  Have one extra set
# of the same type of thread you are using in your container also on top in case you
# run out.  The script will try to rethread the needles and continue on.
#
# The script will then get the book and study it, then get the scissors and armor
# item made from either cloth or leather out and begin the process.
#
Startl:
  put get my tailoring book from my %3
waitfor You get
  put study my book
waitfor Roundtime
  put put my tailoring book in my %3
waitfor You put
  put get %1 from my %2
waitfor You get
  put get scissors from my %2
waitfor You get
  setvariable tooll scissors
#  save scissors
  put cut my %1 with my scissors
waitfor Roundtime

lanalyze:
  goto myl%tooll
#  goto myl%s
mylneedle:
  pause 2
  put put my needle in my %2
waitfor You put
  goto lanalyze1
mylscissors:
  pause 2
  put put my scissors in my %2
waitfor You put
  goto lanalyze1
mylyardstick:
  pause 2
  put put my yardstick in my %2
waitfor You put
  goto lanalyze1
mylpins:
  pause 2
  put put my pins in my %2
waitfor You put
  goto lanalyze1
mylawl:
  pause 2
  put put my awl in my %2
waitfor You put
lanalyze1:
  pause 1
  put analyze my %1
  match lneedle pushing it with a needle and thread
  match lyardstick dimensions changed while working on it, and further progress would be benefited by remeasuring
  match lscissors Additional scissor cuts are required
  match lscissors ready for further cutting with some scissors
  match lscissors Some scissor cuts must be made to the
  match lpins is in need of pinning to help arrange the material
  match lawl an awl to add these holes
  match lawl requires some holes punched
  match LEnd to be a type of finished
  match lrethread The last of your thread is used up
matchwait

lneedle:
  setvariable tooll needle
#  save needle
  pause 1
  put get my needle from my %2
waitfor You get
  put push my %1 with my needle
  match lrethread The last of your thread is used up
  match lanalyze Roundtime
matchwait

lrethread:
  put put my needle in my %2
waitfor You put
  put get thread from my %2
waitfor You get
  put put thread on needle in my %2
waitfor You put
goto lneedle

lyardstick:
  setvariable tooll yardstick
#  save yardstick
  pause 1
  put get my yardstick from my %2
waitfor You get
  put measure my %1 with my yardstick
waitfor Roundtime
goto lanalyze

lscissors:
  setvariable tooll scissors
#  save scissors
  pause 1
  put get my scissors from my %2
waitfor You get
  put cut my %1 with my scissors
waitfor Roundtime
goto lanalyze

lpins:
  setvariable tooll pins
#  save pins
  pause 1
  put get my pins from my %2
waitfor You get
  put poke my %1 with my pins
waitfor Roundtime
goto lanalyze

lawl:
  setvariable tooll awl
#  save awl
  pause 1
  put get my awl from my %2
waitfor You get
  put poke my %1 with my awl
waitfor Roundtime
goto lanalyze

LEnd:
  pause 1
echo -------------------------------
echo =  One %1 has been lightened.
echo -------------------------------
exit