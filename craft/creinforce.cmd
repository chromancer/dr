#Reinforce
#  usage .reinforce <item> <reincontainer> <Tailorbookcontainer>
#    where <item> is the item to be reinforced, gloves, shield, etc.
#          <reincontainer> where tools and item starts.
#          <tailorbookcontainer> where the tailoring book is located.
#
# Note this script is set up for stormfront.  To make it run for the wizard, 
# change setvariable toolr tooltypes to save tooltypes.  Then change the line
# goto myr%toolr to goto myr%s.
#
# First thing you need is have needles with the proper thread already put on the
# needles in your ReinfContainer (PUT THREAD ON MY NEEDLE).  Note from what I can 
# tell fine thread works just fine for all reinforcing projects.  You dont need to
# use a thick or heavy thread on leather items to reinforce them.  Also note that
# each Push of the needles will use 1 yard of thread.  You can use from 6 to 10 yards
# of thread per reinforced item.  Maybe more for big armor items like leathers.
#
# Second have your tailoring book open to the correct page for armor reinforcing in
# chapter 1 and in your ReinfBookContainer, and yes you can make this container the
# same as the one where your tools are at. 
#
# Third have the item to be reinforced in your reincontainer.  Have one extra set
# of the same type of thread you are using in your container also in case you run
# out.  The script will try to rethread the needles and continue on.  And also have
# at least one Large cloth padding in your container as well.
#
# The script will then get the book and study it, then get the scissors and armor
# item made from either cloth or leather out and begin the process.

Startr:
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
  setvariable toolr scissors
#  save scissors
  put cut my %1 with my scissors
waitfor Roundtime

ranalyze:
  goto myr%toolr
#  goto myr%s
myrneedle:
  pause 2
  put put my needle in my %2
waitfor You put
  goto ranalyze1
myrscissors:
  pause 2
  put put my scissors in my %2
waitfor You put
  goto ranalyze1
myryardstick:
  pause 2
  put put my yardstick in my %2
waitfor You put
  goto ranalyze1
myrpins:
  pause 2
  put put my pins in my %2
waitfor You put
  goto ranalyze1
myrawl:
  pause 2
  put put my awl in my %2
waitfor You put
myrnone:
ranalyze1:
  pause 1
  put analyze my %1
  match rneedle pushing it with a needle and thread
  match ryardstick dimensions changed while working on it, and further progress would be benefited by remeasuring
  match rscissors Additional scissor cuts are required
  match rscissors ready for further cutting with some scissors
  match rscissors Some scissor cuts must be made to the
  match rpins is in need of pinning to help arrange the material
  match rawl an awl to add these holes
  match rawl requires some holes punched
  match rlpad1 is ready to be reinforced with some large cloth padding
  match REnd to be a type of finished
  match rrethread The last of your thread is used up
matchwait

rneedle:
  setvariable toolr needle
#  save needle
  pause 1
  put get my needle from my %2
waitfor You get
  put push my %1 with my needle
  match rlpad is ready to be reinforced with some large cloth padding
  match rrethread The last of your thread is used up
  match ranalyze Roundtime
matchwait

rrethread:
  pause 1
  put put my needle in my %2
waitfor You put
  put get thread from my %2
waitfor You get
  put put thread on needle in my %2
waitfor You put
goto ranalyze

ryardstick:
  setvariable toolr yardstick
#  save yardstick
  pause 1
  put get my yardstick from my %2
waitfor You get
  put measure my %1 with my yardstick
  match rlpad is ready to be reinforced with some large cloth padding
  match ranalyze Roundtime
matchwait

rscissors:
  setvariable toolr scissors
#  save scissors
  pause 1
  put get my scissors from my %2
waitfor You get
  put cut my %1 with my scissors
  match rlpad is ready to be reinforced with some large cloth padding
  match ranalyze Roundtime
matchwait

rpins:
  setvariable toolr pins
#  save pins
  pause 1
  put get my pins from my %2
waitfor You get
  put poke my %1 with my pins
  match rlpad is ready to be reinforced with some large cloth padding
  match ranalyze Roundtime
matchwait

rawl:
  setvariable toolr awl
#  save awl
  pause 1
  put get my awl from my %2
waitfor You get
  put poke my %1 with my awl
  match rlpad is ready to be reinforced with some large cloth padding
  match ranalyze Roundtime
matchwait

rlpad:
  goto myrp%toolr
#  goto myrp%s
myrpneedle:
  pause 2
  put put my needle in my %2
waitfor You put
  goto rlpad1
myrpscissors:
  pause 2
  put put my scissors in my %2
waitfor You put
  goto rlpad1
myrpyardstick:
  pause 2
  put put my yardstick in my %2
waitfor You put
  goto rlpad1
myrppins:
  pause 2
  put put my pins in my %2
waitfor You put
  goto rlpad1
myrpawl:
  pause 2
  put put my awl in my %2
waitfor You put
myrpnone:
rlpad1:
  pause 1
  setvariable toolr none
#  save none
  put get large padding from my %2
waitfor You get
  put assemble my %1 with my large padding
waitfor You place your
goto ranalyze

REnd:
  pause 1
echo -------------------------------
echo =  One %1 has been reinforced.
echo -------------------------------
exit