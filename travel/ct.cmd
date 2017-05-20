echo
echo * * *
echo * * * CT.
echo * * *
echo

if_1 goto %1
goto ErrorDestination

EndScript:
echo
echo * * *
echo * * * Arrived.
echo * * *
echo
EXIT

#
# The bank, the academy, and the empath guild are the three main nodes.
# Other locations may branch.
# Non-node destinations have six match statements.
# Node destinations have five.
# In order to add a destination, follow this checklist:
#
# 1) Has destination check?
# 2) Has PathToNode?
# 3) Has directions from node to destination?
# 4) Has directions from destination to node?
#

ban:
bank:
	match EndScript The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

hospital:
hospita:
hospit:
hospi:
hosp:
hos:
emp:
empa:
empat:
empath:
	match bank2empath The granite and marble facade of the First Provincial Bank
	match EndScript The whitewashed building before you is stark and functional
	match academy2empath A side entrance to the Academy, in the form of a low, bronze gate
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

academy:
academ:
acade:
acad:
aca:
asemath:
asemat:
asema:
asem:
ase:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match EndScript A side entrance to the Academy, in the form of a low, bronze gate
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

#
# Bank node.
#

vau:
vaul:
vault:
	match EndScript A sturdy vault, set in the back wall, stands ready for your use
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match bank2vault The granite and marble facade of the First Provincial Bank
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

cormyn:
pawnshop:
pawnsho:
pawnsh:
pawns:
pawn:
paw:
	match EndScript Cormyn's idea of elegance
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match bank2pawn The granite and marble facade of the First Provincial Bank
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

grisgonda:
gemshop:
gemsho:
gemsh:
gems:
gem:
	match EndScript [Grisgonda's, Appraisal Room]
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match bank2gem The granite and marble facade of the First Provincial Bank
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

out:
outf:
outfi:
outfit:
outfitt:
	match EndScript [Outfitting Society, Entry Hall]
	match empath2bank The whitewashed building before you is stark and functional
	match bank2outfitting The granite and marble facade of the First Provincial Bank
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:

market:
marke:
mark:
mar:
	match bank2market The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript [Market Plaza, Foyer]
	match EndScript [The Crossing, Mongers' Square]
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

eastgate:
eastgat:
eastga:
eastg:
east:
eas:
eg:
egate:
	match bank2eg The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript [The Crossing, Eastern Gate]
	match EndScript [Eastern Tier, Outside Gate]
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

observatory:
observator:
observato:
observat:
observa:
observ:
obser:
obse:
obs:
moonmage:
moonmag:
moonma:
moonm:
moon:
moo:
	match bank2eg The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript Before you stands the Observatory of the Southern Crossbow.
	match eg2moonmage [Eastern Tier, Outside Gate]
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

kssarh:
kssar:
kssa:
kss:
	match bank2eg The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript A soft sitting mat covers the floor entirely, save for a narrow strip
	match eg2moonmage [Eastern Tier, Outside Gate]
	match moonmage2kssarh Before you stands the Observatory of the Southern Crossbow
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

rolagi:
rolag:
rola:
rol:
grazhir:
grazhi:
grazh:
graz:
gra:
	match bank2eg The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript You also see the silvery-white shard Rolagi
	match eg2moonmage [Eastern Tier, Outside Gate]
	match moonmage2rolagi Before you stands the Observatory of the Southern Crossbow
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait


forge:
forg:
for:
catrox:
catro:
catr:
cat:
	match bank2forge The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript The forge of Catrox the Dwarf is known throughout the lands
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

temple:
templ:
temp:
tem:
altar:
alta:
alt:
	match bank2altar The granite and marble facade of the First Provincial Bank
	match empath2bank The whitewashed building before you is stark and functional
	match academy2bank A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript [Resurrection Creche, Li Stil rae Kwego ia Kweld]
	match bank2altar2 three tall towers standing guard over the orb of the Main Temple.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

#
# Empath node.
#

northeast:
northeas:
northea:
northe:
neg:
negate:
	match bank2empath The granite and marble facade of the First Provincial Bank
	match empath2neg The whitewashed building before you is stark and functional
	match academy2empath A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript [Northeast Wilds, Outside Northeast Gate]
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

northgate:
northgat:
northg:
north:
nort:
nor:
ng:
	match bank2empath The granite and marble facade of the First Provincial Bank
	match empath2northgate The whitewashed building before you is stark and functional
	match academy2empath A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript [North Gate, Gate]
	match EndScript forming an impassable barrier to anyone who wished to explore the depths of the forest.  You also see a crumbling archway.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

paladin:
paladi:
palad:
pala:
pal:
	match bank2empath The granite and marble facade of the First Provincial Bank
	match empath2paladin The whitewashed building before you is stark and functional
	match academy2empath A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript You stand before a pristine white building, two stories high - the Paladins' Guild.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

barbarian:
barbaria:
barbari:
barbar:
barbar:
barba:
barb:
	match bank2empath The granite and marble facade of the First Provincial Bank
	match empath2barbarian The whitewashed building before you is stark and functional
	match academy2empath A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript Statues of famous barbarians and arena champions form an arcade leading to the arched steel-clad door of the Barbarians' Guild.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

warriormage:
warriormage:
warriormag:
warriorma:
warriorm:
warrior:
warrio:
warri:
warr:
war:
warmage:
warma:
warm:
	match bank2empath The granite and marble facade of the First Provincial Bank
	match empath2neg The whitewashed building before you is stark and functional
	match academy2empath A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript An enormous tower of grey marble rises imposingly from the ground
	match neg2warmage [Northeast Wilds, Outside Northeast Gate]
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

#
# Academy node.
#

ran:
rang:
range:
ranger:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2ranger A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript tall wooden figure whose gaze seems
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

tannery:
tanner:
tanne:
tann:
tan:
falkner:
falkne:
falkn:
falk:
fal:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2tannery A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript presided over by the ever-alert Falken
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

westgate:
westgat:
westga:
westg:
west:
wes:
wg:
wgate:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2wg A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript [Mycthengelde, Flatlands]
	match EndScript Well-worn paths lead through a grove of trees to a gate in The Crossing's western wall.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

direbear:
direbea:
direbe:
direb:
dire:
bear:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2wg A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript landscape spread out like a patchwork quilt
	match wg2outcrop Well-worn paths lead through a grove of trees to a gate in The Crossing's western wall.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

cleric:
cleri:
cler:
cle:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2cleric A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript Several tall, sculpted columns flank a heavily-carved rosewood door that serves as the entryway to the Clerics' Guild.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

bard:
bar:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2bard A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript unpretentious building set unobtrusively off to the south side of the road.  You also see a small building.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

trader:
trade:
trad:
tra:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2wg A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript This is a transitional block of busy Commerce Avenue, leading between the mercantile
	match wg2trader [Mycthengelde, Flatlands]
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

guardhouse:
guardhous:
guardho:
guard:
guar:
gua:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2wg A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript The wealthy traders in the immediate vicinity deemed this the perfect spot for the Guard House
	match wg2trader [Mycthengelde, Flatlands]
	match trader2guard This is a transitional block of busy Commerce Avenue, leading between the mercantile
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

brook:
broo:
bro:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2wg A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript This shallow stream would probably only come chest-high on a short Halfling.
	match wg2brook [Mycthengelde, Flatlands]
	match wg2brook2 Well-worn paths lead through a grove of trees to a gate in The Crossing's western wall.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

leather:
leathe:
leath:
leat:
lea:
randal:
randa:
rand:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2wg A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript Mounds of leather and hides find themselves stacked in almost every corner
	match wg2brook [Mycthengelde, Flatlands]
	match brook2leather This shallow stream would probably only come chest-high on a short Halfling.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

favors:
favor:
favo:
fav:
ruins:
ruin:
rui:
	match bank2academy The granite and marble facade of the First Provincial Bank
	match empath2academy The whitewashed building before you is stark and functional
	match academy2wg A side entrance to the Academy, in the form of a low, bronze gate
	match EndScript [Siergelde, Stone Grotto]
	match wg2favor [Mycthengelde, Flatlands]
	match wg2favor2 Well-worn paths lead through a grove of trees to a gate in The Crossing's western wall.
	match PathToNode Obvious paths:
	match PathToNode Obvious exits:
	put look
	matchwait

PathToNode:

	match kssarh2moonmage A soft sitting mat covers the floor entirely, save for a narrow strip
	match rolagi2moonmage You also see the silvery-white shard Rolagi

	match vault2bank A sturdy vault, set in the back wall, stands ready for your use

	match gem2bank [Grisgonda's, Appraisal Room]
	match pawn2bank Cormyn's idea of elegance
	match outfitting2bank [Outfitting Society, Entry Hall]
	match entergate [Market Plaza, Foyer]
	match market2bank [The Crossing, Mongers' Square]
	match eg2bank [Eastern Tier, Outside Gate]
	match moonmage2eg Before you stands the Observatory of the Southern Crossbow.
	match forge2bank The forge of Catrox the Dwarf is known throughout the lands
	match altar2bank [Resurrection Creche, Li Stil rae Kwego ia Kweld]
	match altar2bank2 three tall towers standing guard over the orb of the Main Temple.
	match moveout [First Provincial Bank, Lobby]

	match neg2empath [Northeast Wilds, Outside Northeast Gate]
	match northgate2empath [North Gate, Gate]
	match enterarchway forming an impassable barrier to anyone who wished to explore the depths of the forest.
	match paladin2empath You stand before a pristine white building
	match barbarian2empath Statues of famous barbarians and arena champions form an arcade
	match warmage2neg An enormous tower of grey marble rises imposingly from the ground

	match ranger2academy tall wooden figure whose gaze seems
	match ranger2academy2 A well-trod path leads from a small open gateway in the town wall
	match tannery2academy presided over by the ever-alert Falken
	match wg2academy [Mycthengelde, Flatlands]
	match cleric2academy Several tall, sculpted columns flank a heavily-carved rosewood door
	match bard2academy unpretentious building set unobtrusively off to the south side of the road
	match trader2wg This is a transitional block of busy Commerce Avenue, leading between the mercantile
	match guard2trader The wealthy traders in the immediate vicinity deemed this the perfect spot for the Guard House
	match leather2brook Mounds of leather and hides find themselves stacked in almost every corner
	match brook2wg This shallow stream would probably only come chest-high on a short Halfling.
	match favor2wg [Siergelde, Stone Grotto]
	match outcrop2wg landscape spread out like a patchwork quilt

	match ErrorStart Obvious paths:
	match ErrorStart Obvious exits:

	put look
	matchwait 2
	echo * * * You are somewhere strange...
	goto ErrorStart

enterarchway:
move go arch
goto %1

entergate:
move go gate
goto %1

moveout:
move out
goto %1

favor2wg:
move e
move go arc
move go trail
move se
move d
move d
move nw
move ne
move ne
move n
move ne
move go path
move ne
move e
move n
move ne
move ne
move e
move se
goto %1

wg2favor:
wg2favor2:
move nw
move w
move sw
move sw
move s
move w
move sw
move go path
move sw
move s
move sw
move sw
move se
move u
move u
move nw
move go trail
move go arc
move go stone
goto %1

altar2bank:
move go door
move s
move go gate
altar2bank2:
move ne
goto %1

bank2altar:
move sw
bank2altar2:
move go gate
move n
move go door
goto %1

empath2market:
move s
move w
move s
move s
move go baz
move se
goto %1

market2empath:
move go arc
move n
move n
move n
move e
move n
goto %1

bank2market:
move e
move go ramp
move n
move n
move go ramp
goto %1

market2bank:
move go ramp
move s
move s
move go ramp
move w
goto %1

bank2academy:
move nw
move n
move n
move n
move n
move n
move n
move w
move w
goto %1

academy2ranger:
move n
move n
move w
move w
move go gate
move n
goto %1

ranger2academy:
move s
ranger2academy2:
move go gate
move e
move e
move s
move s
goto %1

eg2bank:
move go gate
move w
move w
move w
move w
goto %1

bank2eg:
move e
move e
move e
move e
move go gate
goto %1

neg2empath:
move go gate
move w
move w
move s
move s
move w
move w
goto %1

empath2neg:
move e
move e
move n
move n
move e
move e
move go gate
goto %1

empath2bank:
move s
move w
move w
move s
move s
move s
move s
move s
move s
move se
goto %1

bank2empath:
move nw
move n
move n
move n
move n
move n
move n
move e
move e
move n
goto %1

northgate2empath:
move e
move e
move s
move e
move s
move e
goto %1

empath2northgate:
move w
move n
move w
move n
move w
move w
goto %1

academy2bank:
move e
move e
move s
move s
move s
move s
move s
move s
move se
goto %1

academy2empath:
move e
move e
move e
move e
move n
goto %1

empath2academy:
move s
move w
move w
move w
move w
goto %1

paladin2empath:
move s
move s
move s
move e
move s
move s
move w
goto %1

empath2paladin:
move e
move n
move n
move w
move n
move n
move n
goto %1

cleric2academy:
move s
move s
move s
move s
goto %1

academy2cleric:
move n
move n
move n
move n
goto %1

academy2wg:
move w
move w
move go bri
move w
move w
move w
move w
move go gate
goto %1

wg2academy:
move go gate
move e
move e
move e
move e
move e
move e
move e
goto %1

trader2wg:
move n
move n
move n
move n
move n
move n
move w
move w
move w
move go gate
goto %1

wg2trader:
move go gate
move e
move e
move e
move s
move s
move s
move s
move s
move s
goto %1

wg2brook:
wg2brook2:
move go path
move w
move w
move nw
move w
move w
move nw
move w
move w
move sw
move w
move w
move nw
move nw
move w
move w
move nw
move w
move w
move go brook
goto %1

brook2leather:
move w
move w
move w
move sw
move w
move w
move s
move s
move s
move e
move go bush
move s
move sw
move s
move w
move s
move w
move s
move s
move go build
move e
goto %1

leather2brook:
move w
move out
move n
move n
move e
move n
move e
move n
move ne
move n
move go bush
move n
move w
move n
move e
move n
move e
move ne
move e
move go brook
move e
goto %1

brook2wg:
move e
move e
move e
move se
move e
move e
move se
move se
move e
move e
move ne
move e
move e
move se
move e
move e
move se
move e
move e
move go path
goto %1

warmage2neg:
move s
move sw
move w
move sw
move nw
move w
move w
move nw
goto %1

neg2warmage:
move se
move e
move e
move se
move ne
move e
move ne
move n
goto %1

forge2bank:
move out
move w
move w
goto %1

bank2forge:
move e
move e
move go forge
goto %1

moonmage2eg:
moonmage2eg2:
move go gate
move n
move n
move w
move sw
move sw
move w
move w
move w
move n
move nw
move nw
move w
move s
move s
move sw
move w
goto %1

eg2moonmage:
eg2moonmage2:
move e
move ne
move n
move n
move e
move se
move se
move s
move e
move e
move e
move ne
move ne
move e
move s
move s
move go gate
goto %1

tannery2academy:
move out
move e
move s
move s
goto %1

academy2tannery:
move n
move n
move w
move go shed
goto %1

guard2trader:
move n
goto %1

trader2guard:
move s
goto %1

barbarian2empath:
move n
goto %1

empath2barbarian:
move s
goto %1

bard2academy:
move e
goto %1

academy2bard:
move w
goto %1

moonmage2kssarh:
move go door
move s
move w
move sw
move nw
move w
move n
move go stair
move s
move e
move se
move ne
move e
move n
match ToKssarhWait You whisper
match ToKssarhImmediate You have no group
put whisper group TOUCH the HAND to follow me.
matchwait 3
goto ToKssarhImmediate

ToKssarhWait:
put touch hand
match moonmage2kssarh2 You glance
echo * * * Wait until group rejoins, then type GLANCE to continue the script.
matchwait
goto moonmage2kssarh2

ToKssarhImmediate:
put touch hand
goto moonmage2kssarh2

moonmage2kssarh2:
move ne
move nw
move n
move w
move nw
move sw
goto %1

kssarh2moonmage:
move w
move s
move sw
move se
move s
move e
move se
move ne
move e
move n
match FromKssarhWait You whisper
match FromKssarhImmediate You have no group
put whisper group TOUCH the HAND to follow me.
matchwait 3
goto FromKssarhImmediate

FromKssarhWait:
put touch hand
match kssarh2moonmage2 You glance
echo * * * Wait until group rejoins, then type GLANCE to continue the script.
matchwait
goto kssarh2moonmage2

FromKssarhImmediate:
put touch hand
goto kssarh2moonmage2

kssarh2moonmage2:
move s
move w
move sw
move nw
move w
move n
move go stair
move s
move e
move se
move ne
move e
move n
move go door
goto %1

rolagi2moonmage:
move climb stair
move e
move ne
move se
move e
move s
move se
move sw
move go door
goto %1

moonmage2rolagi:
move go door
move ne
move nw
move n
move w
move nw
move sw
move w
move climb stair
goto %1

wg2outcrop:
move go path
move w
move w
move nw
move w
move w
move nw
move w
move w
move sw
move w
move w
move nw
move nw
move w
move w
move nw
move w
move w
move go brook
move w
move w
move w
move sw
move w
move w
move w
move w
move climb trail
move climb cliff
move nw
move nw
move n
move n
move nw
move u
move u
goto %1

outcrop2wg:
move d
move d
move se
move s
move s
move se
move se
move climb cliff
move climb trail
move e
move e
move e
move e
move ne
move e
move go brook
move e
move e
move e
move e
move se
move e
move e
move se
move se
move e
move e
move ne
move e
move e
move se
move e
move e
move se
move e
move e
move go path
goto %1

bank2vault:
move nw
move go square
move go door
move go iron arch
put pull lev
move go door
put open vault
echo * * * The vault stands ready.
goto %1

vault2bank:
put close vault
move go door
move go arch
move out
move out
move se
goto %1

pawn2bank:
move out
move n
move e
move e
move s
move s
move s
move e
move e
move s
move s
move e
move e
move se
goto %1

bank2pawn:
move nw
move n
move n
move n
move n
move n
move n
move w
move w
move w
move w
move go oxenwaithe bridge
move s
move go dimly-lit shop
goto %1

bank2gem:
move e
move n
move n
move go jewelry shop
move go side room
goto %1

gem2bank:
move out
move out
move s
move s
move w
goto %1

bank2outfitting:
move nw
move w
move w
move n
move n
move w
move w
move go building
goto %1

outfitting2bank:
move go door
move e
move e
move s
move s
move e
move e
move se
goto %1

ErrorDestination:
echo
echo * * *
echo * * * CT says: you didn't specify a destination!
echo * * *
echo * * * Here's a list of valid destinations...
echo * * *
echo

ErrorStart:
echo
echo * * *
echo * * * CT says: you must start in one of these locations!
echo * * *
echo * * * Outside all gates.
echo * * * Outside all guilds.
echo * * * The guardhouse.
echo * * * The bank.
echo * * * The tannery.
echo * * * Catrox (for metal repair).
echo * * * Randal (for non-metal repair).
echo * * * The market plaza.
echo * * * The brook.
echo * * * The Academy.
echo * * * The hospital.
echo * * * The ruins.
echo * * * The Temple.
echo * * * Dire bears.
echo * * * The shard Rolagi.
echo * * * Kssarh.
echo * * * Enter a minimum of three letters.
echo * * *
echo
exit

LabelError:
echo
echo * * *
echo * * * Unknown error.
echo * * * Exiting.
echo * * *
echo
exit
