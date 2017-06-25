# Usage .astral <destination>
# Notes.
# 1. if your map does not have the same $roomid's as my map, you might just die.
# 2. I also had to update my map on automapper to account for fang cove. You need to do this too.
# 3. This script uses standard spell preps. If you do alternate spell preps, adjust the script accordingly.
########################################################################################################################################################
# Variables you can and should change.
 var spell teleport
 var mana 20
 var harness 30

# var legend means you are 100th circle or higher. should be set to yes or no. The legendary ability is only used if you are not in front of a shard.
 var legend yes

# if var releaseMana = yes, then you will release mana before you cast teleport. Lower circle mages might backfire if they don't release and higher circle moonmages will lose their cyclics.
 var releaseMana yes

########################################################################################################################################################
#Change nothing below this line
 var currentConduit NA
 var currentPillar NA
 var atMicrocosm no

 var initialShard NA
 if %legend = yes then var initialShard Grazhir
 if "$zoneid" = "7" then if $roomid = 696 then var initialShard Emalerje
 if "$zoneid" = "47" then if $roomid = 199 then var initialShard Tabelrem
 if "$zoneid" = "8a" then if $roomid = 14 then var initialShard Rolagi
 if "$zoneid" = "63" then if $roomid = 116 then var initialShard Asharshpar'i
 if "$zoneid" = "32" then if $roomid = 80 then var initialShard Taniendar
 if "$zoneid" = "35" then if $roomid = 196 then var initialShard Mintais
 if "$zoneid" = "42" then if $roomid = 292 then var initialShard Dinegavren
 if "$zoneid" = "67" then if $roomid = 541 then var initialShard Marendin
 if "$zoneid" = "90d" then if $roomid = 2 then var initialShard Erekinzil
 if "$zoneid" = "69" then if $roomid = 266 then var initialShard Tamigen
 if "$zoneid" = "116" then if $roomid = 185 then var initialShard Dor'na'torna
 if "$zoneid" = "99" then if $roomid = 280 then var initialShard Auilusi
 if "$zoneid" = "107" then if $roomid = 301 then var initialShard Besoge
 if "$zoneid" = "150" then if $roomid = 215 then var initialShard Vellano

 var finalShard NA
 if matchre ("%1", ("Tiv|tiv|Dirge|dirge")) then var finalShard Emalerje
 if matchre ("%1", ("mus|musp|muspa|muspar|muspari|Muspari")) then var finalShard Tabelrem
 if matchre ("%1", ("Crossing|crossing|xing|Xing")) then var finalShard Rolagi
 if matchre ("%1", ("Leth|leth")) then var finalShard Asharshpar'i
 if matchre ("%1", ("Haven|haven|Riverhaven|riverhaven")) then var finalShard Taniendar
 if matchre ("%1", ("Throne|throne|tc|TC")) then var finalShard Mintais
 if matchre ("%1", ("Theren|theren")) then var finalShard Dinegavren
 if matchre ("%1", ("Shard|shard")) then var finalShard Marendin
 if matchre ("%1", ("Taisgath|taisgath|Taisg|taisg|tais|Ratha|ratha")) then var finalShard Erekinzil
 if matchre ("%1", ("Raven|raven|dragonpriest|dragon|dp|cragstone")) then var finalShard Tamigen
 if matchre ("%1", ("Hib|hib|p5|P5|boar")) then var finalShard Dor'na'torna
 if matchre ("%1", ("Aesry|aesry")) then var finalShard Auilusi
 if matchre ("%1", ("kresh|Kresh|Merkresh|merkresh|mriss|riss|Mriss|Riss")) then var finalShard Besoge
 if matchre ("%1", ("Fang|fang|cove|fang cove")) then var finalShard Vellano
 var finalConduit %finalShard Conduit
 if %initialShard = NA then ECHO Uh oh, You didn't specify a correct location
 if %initialShard = NA then exit

 if matchre ("%finalShard", ("Rolagi|Tabelrem")) then var myPillar Pillar of Nightmares
 if matchre ("%finalShard", ("Auilusi|Dor'na'torna")) then var myPillar Pillar of Tradition
 if matchre ("%finalShard", ("Marendin|Besoge")) then var myPillar Pillar of Secrets
 if %finalShard = Vellano then var myPillar Pillar of Unity
 if %finalShard = Emalerje then var myPillar Pillar of the Shrew
 if matchre ("%finalShard", ("Asharshpar'i|Tamigen")) then var myPillar Pillar of the Heavens
 if matchre ("%finalShard", ("Dinegavren|Taniendar")) then var myPillar Pillar of Introspection
 if matchre ("%finalShard", ("Mintais|Erekinzil")) then var myPillar Pillar of Fortune

 action goto harness when cocoa|You struggle to maintain your distance from the streams of mana\.|Your mind begins to falter\, causing you to edge dangerously close to the violent streams of mana\.
 action var currentConduit $1 Conduit when Astral Plane, (\w+(\'\w+)?(\'?\w+)?)
 action var currentPillar NA when (You cannot attempt to enter another conduit from this location|You move into the chaotic tides of energy)
 action var finalDestination $1 when You believe the end of the conduit lies (\w+)
 action var centerMicrocosm $1 when You believe the center of the microcosm is to the (\w+)
 action var currentPillar $1 when (Pillar of( the)? \w+)
 action var atMicrocosm yes when (Obvious exits: east, west, up, down|From this vantage point)
 action var atMicrocosm no when (Astral Plane, (Emalerje|Tabelrem|Rolagi|Asharshpar'i|Taniendar|Mintais|Dinegavren|Marendin|Erekinzil|Tamigen|Dor'na'torna|Auilusi|Besogi) Conduit|You move into the chaotic tides of energy)
 action var currentShard $1 when shard (\S+)\.$
 action put quit when (The Defilers of Fate are mine to claim and I demand sacrifice|You are overcome by a sudden wave of nausea)
 action put stand when You can't do that while sitting
 action goto perceive when (You finally manage to free yourself from the webbing|A wave of rippling air sweeps through the conduit)

releaseSpell:
 matchre releaseSpell \.\.\.|Sorry
 matchre assess RELEASE|You aren\'t preparing|You let your concentration lapse
 put release spell
 matchwait

assess:
 matchre assess \.\.\.|Sorry\, you may only
 match consider Astral Plane
 put look
 matchwait 2

begin:
 matchre begin \.\.\.|Sorry\, you may only
 put prep %spell %mana
 matchwait 2
 if %initialShard != Grazhir then goto initialShard
 waitforre fully prepared
 goto cast

initialShard:
 matchre initialShard \.\.\.|Sorry
 put focus %initialShard
 matchwait 18

cast:
 matchre cast \.\.\.|Sorry
 matchre harness You gesture
 put cast %initialShard
 matchwait

harness:
 matchre harness \.\.\.|Sorry\, you may only
 matchre consider You tap|Strain though you may|HARNESS
 put harness %harness
 matchwait

consider:
 pause 1
 var toDestination no
 var toMicrocosm no

 if %currentConduit != %finalConduit and %atMicrocosm = no then var toMicrocosm yes
 if %finalConduit = %currentConduit and %atMicrocosm = no then var toDestination yes
 if %currentShard = %finalShard and $spelltime > 0 then goto castShard
 if %currentShard = %finalShard then goto finalShard
 if %atMicrocosm = yes then goto move
 if %toMicrocosm = yes then goto perceive
 if %toDestination = yes then goto perceive

perceive:
 if %currentShard = %finalShard then goto consider

perceiveNow:
 matchre perceiveNow \.\.\.|Sorry\, you may only
 matchre move You believe|From this vantage point|Obvious exits
 put perceive
 matchwait

move:
 pause 1
 if %myPillar = %currentPillar then goto focusShard
 if %atMicrocosm = yes then put east
 if %toMicrocosm = yes then put %centerMicrocosm
 if %currentShard != %finalShard then if %toDestination = yes then put %finalDestination
 goto consider

finalShard:
 action remove (You finally manage to free yourself from the webbing|A wave of rippling air sweeps through the conduit)

finalSharda:
 matchre finalSharda \.\.\.|Sorry\, you may only
 match focusShard You raise
 put prep %spell %mana
 matchwait

focusShard:
 matchre focusShard \.\.\.|Sorry\, you may only
 matchre consider You reach out|You cannot attempt to enter another conduit from this location|You move
 match castShard fully prepared
 put focus %finalShard
 matchwait 20
 if $spelltime = 0 then goto finalShard

castShard:
 if %releaseMana = yes then goto releaseMana
 castSharda:
 matchre castSharda \.\.\.|Sorry\, you may only
 match done You gesture
 put cast %finalShard
 matchwait

releaseMana:
 matchre releaseMana \.\.\.|Sorry\, you may lonly
 matchre castSharda You aren\'t harnessing any mana\.|You release|RELEASE
 put release mana
 matchwait

done:
 echo Made it to %1 by going through %myPillar and then navigating to the %finalShard
 exit
