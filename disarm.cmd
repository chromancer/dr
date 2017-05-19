setvariable pouch gem pou
setvariable dif_dis %1
setvariable dif_pic %2

trunk:
setvariable box trunk
match trap_ident You get
match trap_ident You are already holding that.
match strongbox What were you referring to?
put get my trunk
matchwait

strongbox:
setvariable box strongbox
match trap_ident You get
match trap_ident You are already holding that.
match skippet What were you referring to?
put get my strongbox
matchwait

skippet:
setvariable box skippet
match trap_ident You get
match trap_ident You are already holding that.
match crate What were you referring to?
put get my skippet
matchwait

crate:
setvariable box crate
match trap_ident You get
match trap_ident You are already holding that.
match coffer What were you referring to?
put get my crate
matchwait

coffer:
setvariable box coffer
match trap_ident You get
match trap_ident You are already holding that.
match casket What were you referring to?
put get my coffer
matchwait

casket:
setvariable box casket
match trap_ident You get
match trap_ident You are already holding that.
match caddy What were you referring to?
put get my casket
matchwait

caddy:
setvariable box caddy
match trap_ident You get
match trap_ident You are already holding that.
match chest What were you referring to?
put get my caddy
matchwait

chest:
setvariable box chest
match trap_ident You get
match trap_ident You are already holding that.
match box What were you referring to?
put get my chest
matchwait

box:
setvariable box box
match trap_ident You get
match trap_ident You are already holding that.
match end2 What were you referring to?
put get my box
matchwait

trap_ident:
pause 1
match trap_ident_f fails to reveal to you what type of trap protects it.
match trap_ident_s You think this trap is precisely at your skill level.
match trap_ident_s good shot at disarming
match trap_ident_s You have some chance of being
match trap_ident_s The odds are against you,
match trap_ident_s with only minor troubles.
match trap_ident_s long with your skills.
match trap_ident_s You have an amazingly minimal
match trap_ident_s Prayer would be a good start
match trap_ident_s simple matter for you to disarm.
match trap_ident_s which you can take down any time.
match trap_ident_s would be a longshot.
match trap_ident_s An aged grandmother could open this in her sleep.
match trap_ident_s you could do it blindfolded!
match trap_ident_s An aged grandmother could
match trap_ident_s You really don't have any chance

##****************************************************
##******** add additional success lines above ********
##****************************************************

match get_lockpick Roundtime: 3 sec.
match trap_disarm Somebody has already located
put disarm my %box iden
matchwait
trap_ident_s:
pause 1
pause 1
goto trap_disarm
trap_ident_f:
pause 1
pause 1
goto trap_ident
trap_disarm:
pause 1
match trap_disarm_f unable to make any progress.
match trap_disarm_s After wiggling the milky-white tube
match trap_disarm_s Working slowly, you carefully
match trap_disarm_s Carefully, you pry the bronze face away
match trap_disarm_s Careful not to jostle
match trap_disarm_s With the precision and grace
match trap_disarm_s With sweat forming on your brow,
match trap_disarm_s You cautiously pry
match trap_disarm_s With precise control,
match trap_disarm_s With a smirk you wedge
match trap_disarm_s stopping it up and disarming the trap.
match trap_disarm_s You manage to work the contact fibers away
match trap_disarm_s Working with extreme care,
match trap_disarm_s Unsure as to whether the liquid-filled bladder
match trap_disarm_s manage to bend it well away from the mesh bag.
match trap_disarm_s By focusing on its tiny legs, you are able
match trap_disarm_s Reaching into the keyhole carefully, you knock

##****************************************************
##******** add additional success lines above ********
##****************************************************

put disarm my %box %dif_dis
matchwait

trap_disarm_s:
pause 1
pause 1
goto trap_morecheck

trap_disarm_f:
pause 1
pause 1
goto trap_disarm

trap_morecheck:
match disarmed Roundtime: 3 sec.
match notdisarmed Roundtime: 4 sec.
match notdisarmed Roundtime: 5 sec.
match notdisarmed Roundtime: 6 sec.
match notdisarmed Roundtime: 7 sec.
match notdisarmed Roundtime: 8 sec.
match notdisarmed Roundtime: 9 sec.
match notdisarmed Roundtime: 10 sec.
match notdisarmed Roundtime: 11 sec.
match notdisarmed Roundtime: 12 sec.
match notdisarmed Roundtime: 13 sec.
match notdisarmed Roundtime: 14 sec.
match notdisarmed Roundtime: 15 sec.
put disarm my %box iden
matchwait

disarmed:
pause 1
pause 1
goto get_lockpick

notdisarmed:
pause 1
pause 1
goto trap_ident

get_lockpick:
pause 1
pause 1
goto lock_ident
matchwait

lock_ident:
pause 1
match notdisarmed making any chance of picking it unlikely.
match lock_ident_f fails to teach you anything about the lock guarding it.
match lock_ident_s You have some chance
match lock_ident_s The lock has the edge on you,
match lock_ident_s The odds are against you,
match lock_ident_s You think this lock is precisely at your skill level.
match lock_ident_s with only minor troubles.
match lock_ident_s should not take long with your skills.
match lock_ident_s You really don't have any chance
match lock_ident_s You have an amazingly minimal
match lock_ident_s The lock is a trivially constructed
match lock_ident_s simple matter for you to unlock.
match lock_ident_s Prayer would be a good start
match lock_ident_s would be a longshot.
match lock_ident_s This lock is a laughable matter,
match lock_ident_s An aged grandmother could
match lock_ident_s You probably have the same shot as a snowball
match lock_ident_s A pitiful snowball
match lock_ident_s jump off a cliff and save yourself the frustration of attempting

##****************************************************
##******** add additional success lines above ********
##****************************************************

match get_lockpick Find a more appropriate tool and try again!
match lock_pick Somebody has already inspected
match lock_pick It's not even locked, why bother?
put pick my %box iden
matchwait

lock_ident_s:
pause 1
pause 1
goto lock_pick
lock_ident_f:
pause 1
pause 1
goto lock_ident
lock_pick:
pause 1
match out Find a more appropriate tool and try again!
match lock_pick_s It's not even locked, why bother?
match lock_pick_s With a soft click,
match lock_pick_f You are unable to make any progress
put pick my %box %dif_pic
matchwait
lock_pick_s:
pause 1
pause 1
goto lock_morecheck
lock_pick_f:
pause 1
pause 1
goto lock_pick
lock_morecheck:
pause 1
match open You open your
match open You open the
match open That is already open.
match lock_ident It is locked.
put open my %box
matchwait
open:
pause 1
get_coin:
match get_coin You pick up
match coin_out What were you referring to?
put get coin from my %box
matchwait
coin_out:
fill:
match fill_s You take
match fill_s You fill
match fill_S You open your
match fill_full You can't fit anything else
match fill_full You'll need to tie it up before
match fill_s There aren't any gems
put fill my dark pouch with my %box
## if WE EVER FIGURE OUT PERSONAL VARIABLES CHANGE THIS BACK TO %pouch or possibly %gem
matchwait
fill_full:
echo * * *
echo * * * Gem container full.
echo * * *
goto end2
fill_s:
pause 1
pause 1
put disman my %box focus
pause 1
put disman my %box focus
pause 2
goto end
out:
echo * * *
echo * * * Out of lockpicks.
echo * * *
goto end2
end:
pause 1
goto %box
end2:
exit
