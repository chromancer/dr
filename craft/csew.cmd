#Sew
# parameters are sew <container1> <container2> <item> <material> <SAME>
#
# If you have <container1> and <Item> Similar but different you can use your
# inputs as follows:
#  .sew "sea bag" pack "thigh bag" cloth 0
# This will run just fine with no problem.  
#
# However, if they are both duffel bag or both sea bag or both thigh bag the
# script fouls up.  So I was forced to add another input for when they were the 
# same. <SAME>.  When they are both Duffel Bag put a 1 for <SAME> otherwise 0.
#
# Note this script is set up for stormfront.  To make it run for the wizard, 
# change setvariable tool tooltypes to save tooltypes.  Then change the line
# goto my%tool to goto my%s.
#
# This script assumes 4 big items up front.  First you have a sewing needles with
# the proper thread already put on the needles (PUT THREAD ON MY NEEDLE) and that
# there is enough thread on the needle to complete your project and in your sewing
# container1 (figure 1 yard of thread per push command on the needle, so figure on
# at least 8 pushes for most items and therefore needing 8+ yards thread minimum).  Second 
# have your tailoring book open to the correct page for the item being worked and 
# have it in your Container2, and yes the Sew container1 and the book container2
# can be the same container of you wish.  Third have your cloth or leather in your
# sewing container1 already cut to the yards needed for the project.  Fourth, any
# ingredients needed to complete the project need to be in the sew container1.  And last
# make sure you have an extra spool of thread there too.  If you run out the script 
# will try to get the extra thread and continue the project.
#
# The script will then get the book and study it, then get the scissors and cloth or
# leather out and begin the process.
#

  put get tailoring book from my %2
  pause 1
  put study my book
waitfor Roundtime
  pause 1
  put put my tailoring book in my %2
waitfor You put
  pause 1
  put get %4 from my %1
  pause 1
  put get scissors from my %1
waitfor You get
  setvariable tool scissors
#  save scissors
  Pause 1
  put cut my %4 with my scissors
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GSew:
  goto samea%5
samea0:
  goto my0%tool
#  goto my0%s
my0yardstick:
  pause 2
  put put my yardstick in my %1
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
goto my0needle
my0pins:
  pause 2
  put put my pins in my %1
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
goto my0needle
my0slickstone:
  pause 2
  put put my slickstone in my %1
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
goto my0needle
my0awl:
  pause 2
  put put my awl in my %1
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
goto my0needle
my0scissors:
  pause 2
  put put my scissors in my %1
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
my0needle:
  goto samea2

samea1:
  goto my1%tool
#  goto my1%s
my1yardstick:
  pause 2
  put put my yardstick in my other %1
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle
goto my1needle
my1pins:
  pause 2
  put put my pins in my other %1
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle
goto my1needle
my1slickstone:
  pause 2
  put put my slickstone in my other %1
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle
goto my1needle
my1awl:
  pause 2
  put put my awl in my other %1
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle
goto my1needle
my1scissors:
  pause 2
  put put my scissors in my other %1
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle
my1needle:

samea2:
  Pause 1
  put push my %3 with my needle
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GYardstick:
  goto sameb%5
sameb0:
  pause 2
  put put my needle in my %1
  pause 1
  put get my yardstick from my %1
  setvariable tool yardstick
#  save yardstick
  goto sameb2

sameb1:
  pause 2
  put put my needle in my other %1
  pause 1
  put get my yardstick from my other %1
  setvariable tool yardstick
#  save yardstick

sameb2:
  Pause 1
  put measure my %3 with my yardstick
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GScissors:
  goto samec%5
samec0:
  pause 2
  put put my yardstick in my %1
  pause 1
  put get my scissors from my %1
  setvariable tool scissors
#  save scissors
  goto samec2

samec1:
  pause 2
  put put my yardstick in my other %1
  pause 1
  put get my scissors from my other %1
  setvariable tool scissors
#  save scissors

samec2:
  Pause 1
  put cut my %3 with my scissors
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GPins:
  goto samed%5
samed0:
  pause 2
  put put my needle in my %1
  pause 1
  put get my pins from my %1
  setvariable tool pins
#  save pins
  goto samed2

samed1:
  pause 2
  put put my needle in my other %1
  pause 1
  put get my pins from my other %1
  setvariable tool pins
#  save pins

samed2:
  Pause 1
  put poke my %3 with my pins
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GSlickstone:
  goto samee%5
samee0:
  pause 2
  put put my needle in my %1
  pause 1
  put get my slickstone from my %1
  setvariable tool slickstone
#  save slickstone
  goto samee2

samee1:
  pause 2
  put put my needle in my other %1
  pause 1
  put get my slickstone from my other %1
  setvariable tool slickstone
#  save slickstone

samee2:
  Pause 1
  put rub my %3 with my slickstone
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GAwl:
  goto samef%5
samef0:
  pause 2
  put put my needle in my %1
  pause 1
  put get my awl from my %1
  setvariable tool awl
#  save awl
  goto samef2

samef1:
  pause 2
  put put my needle in my other %1
  pause 1
  put get my awl from my other %1
  setvariable tool awl
#  save awl

samef2:
  Pause 1
  put poke my %3 with my awl
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

Assemble1:
  goto sameg%5
sameg0:
  pause 2
  put put my %tool in my %1
#  put put my %s in my %1
  pause 1
  put get small padding from my %1
  pause 1
  put assemble my %3 with my small padding
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
  goto sameg2

sameg1:
  pause 2
  put put my %tool in my other %1
#  put put my %s in my other %1
  pause 1
  put get small padding from my other %1
  pause 1
  put assemble my %3 with my small padding
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle

sameg2:
  pause 1
  put push my %3 with my needle
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

Assemble2:
  goto sameh%5
sameh0:
  pause 2
  put put my %tool in my %1
#  put put my %s in my %1
  pause 1
  put get large padding from my %1
  pause 1
  put assemble my %3 with my large padding
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
  goto sameh2

sameh1:
  pause 2
  put put my %tool in my other %1
#  put put my %s in my other %1
  pause 1
  put get large padding from my other %1
  pause 1
  put assemble my %3 with my large padding
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle

sameh2:
  Pause 1
  put push my %3 with my needle
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd You cannot figure out how to do that
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

Assemble3:
  goto samei%5
samei0:
  pause 2
  put put my %tool in my %1
#  put put my %s in my %1
  pause 1
  put get handle from my %1
  pause 1
  put assemble my %3 with my handle
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
  goto samei2

samei1:
  pause 2
  put put my %tool in my other %1
#  put put my %s in my other %1
  pause 1
  put get handle from my other %1
  pause 1
  put assemble my %3 with my handle
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle

samei2:
  Pause 1
  put push my %3 with my needle
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

Assemble4:
  goto samej%5
samej0:
  pause 2
  put put my %tool in my %1
#  put put my %s in my %1
  pause 1
  put get long cord from my %1
  pause 1
  put assemble my %3 with my long cord
  pause 1
  put get my needle from my %1
  setvariable tool needle
#  save needle
  goto samej2

samej1:
  pause 2
  put put my %tool in my other %1
#  put put my %s in my other %1
  pause 1
  put get long cord from my other %1
  pause 1
  put assemble my %3 with my long cord
  pause 1
  put get my needle from my other %1
  setvariable tool needle
#  save needle

samej2:
  Pause 1
  put push my %3 with my needle
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GRethread:
  goto samek%5
samek0:
  pause 2
  put put my needles in my %1
  pause 1
  put get thread from my %1
  pause 1
  put put thread on needle in my %1
  pause 1
  put get needle from my %1
  setvariable tool needle
#  save needle
  goto samek2

samek1:
  pause 2
  put put my needles in my other %1
  pause 1
  put get thread from my other %1
  pause 1
  put put thread on needle in my other %1
  pause 1
  put get needle from my other %1
  setvariable tool needle
#  save needle

samek2:
  Pause 1
  put push my %3 with my needle
  Match GYardstick dimensions appear to have shifted and could benefit from some remeasuring
  Match GScissors With the measuring complete, now it is time to cut away more
  Match GPins and could use some pins to
  Match GSlickstone deep crease develops along
  Match GSlickstone wrinkles from all the handling and could use
  Match GAwl One leather piece is too thick for the needle to penetrate
  Match GAwl A critical section of leather needs holes punched
  Match GRethread The last of your thread is used up
  Match GEnd You cannot figure out how to do that
  Match GEnd You realize that cannot be repaired, and stop
  Match GEnd not damaged enough to
  Match GEnd Applying the final touches, you complete working
  Match Assemble1 You need another finished small cloth padding
  Match Assemble2 You need another finished large cloth padding
  Match Assemble3 You need another finished leather shield handle
  Match Assemble4 You need another finished long leather cord
  Match GSew Roundtime
matchwait

GStamp:
  goto samel%5
samel0:
  pause 2
  put put my needles in my %1
  pause 1
  put get stamp from my %2
  pause 1
  put mark my %3 with my stamp
waitfor Roundtime
  put put my stamp in my %2
echo -------------------------------
echo =  One %3 is completed.
echo -------------------------------
exit

samel1:
  pause 2
  put put my needles in my other %1
  pause 1
  put get stamp from my %2
  pause 1
  put mark my %3 with my stamp
waitfor Roundtime
  put put my stamp in my %2
echo -------------------------------
echo =  One %3 is completed.
echo -------------------------------
exit
  
GEnd:
  goto samem%5
samem0:
  pause 1
  put put my needles in my %1
echo -------------------------------
echo =  One %3 is completed.
echo -------------------------------
exit

samem1:
  pause 1
  put put my needles in my other %1
echo -------------------------------
echo =  One %3 is completed.
echo -------------------------------
exit