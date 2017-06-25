echo
echo * * *
echo * * * Melee fighting loop with periodic experience check.
echo * * *
echo

action [override] goto EarlyEnd

setvariable Period 0

ANALYZE:
if Period == 5 goto CheckExp
calculate Period add 1

match JAB landing a jab
match FEINT landing a feint
match DRAW landing a draw
match CHOP landing a chop
match SLICE landing a slice
match SWEEP landing a sweep
match LUNGE landing a lunge
match THRUST landing a thrust
match SLAM landing a slam
match SWING landing a swing
match BASH landing a bash
match KICK landing a kick
match SLAP landing a slap
match GOUGE landing a gouge
match ELBOW landing an elbow
match CLAW landing a claw
match PUNCH landing a punch
match FACENEXT Analyze what
match ANALYZE Face what
match ANALYZE fail to find
match ANALYZE ...wait
match ANALYZE You are still stunned.
match ANALYZE What are you trying to attack
match ADVANCE You must be closer to use tactical abilities on your opponent
MATCH FACENEXT is already quite dead.
put analyze %2
matchwait

FACE:
	put face next

ADVANCE:
	pausepart 2
	put advance
	pausepart 2
	goto ANALYZE

THRUST:
	save "thrust"
	goto ATTACK

SLAM:
	save "slam"
	goto ATTACK

SWING:
	save "swing"
	goto ATTACK

BASH:
	save "bash"
	goto ATTACK

KICK:
	save "kick"
	goto ATTACK

SLAP:
	save "slap"
	goto ATTACK

GOUGE:
	save "gouge"
	goto ATTACK

ELBOW:
	save "elbow"
	goto ATTACK

CLAW:
	save "claw"
	goto ATTACK

PUNCH:
	save "punch"
	goto ATTACK

LUNGE:
	save "lunge"
	goto ATTACK


SWEEP:
	save "sweep"
	goto ATTACK

SLICE:
	save "slice"
	goto ATTACK

CHOP:
	save "chop"
	goto ATTACK

DRAW:
	save "draw"
	goto ATTACK

JAB:
	save "jab"
	goto ATTACK

FEINT:
	save "feint"
	goto ATTACK

ATTACK:
	match ArrangeDead balance]
	match ArrangeDead balanced]
	match ArrangeDead balance.]
	match ArrangeDead balanced.]
	match WaitAnalyze if you used a melee weapon
	match RANGE You aren't close enough
	match ANALYZE Roundtime
	match ATTACK ...wait
	match ATTACK Face what
	match ATTACK What are you trying to attack?
	put %s
	matchwait

WaitAnalyze:
	pause 10
	goto ANALYZE

RANGE:
	waitfor melee
	goto ATTACK

FACENEXT:
	match HOLD nothing else
	match ANALYZE you turn to
	put face next
	matchwait 3

HOLD:
	match ANALYZE melee range on you
	match ANALYZE balanced and
	match ANALYZE balance and
	match analyze balanced with
	match analyze balance with
	echo
	echo * * * Holding until next attacker reaches melee range...
	echo
	matchwait 10
	goto HOLD

ArrangeDead:
	match ANALYZE Arrange what?
	match ArrangeDead You arrange
	match ArrangeDead You begin to arrange
	match ArrangeDead You continue arranging
	match SkinDead You complete arranging
	put arrange
	matchwait 3

SkinDead:
	put skin
	pausetext 2 roundtime
	put loot %2
	pause 2
	goto ANALYZE

CheckExp:
	echo * * * Skill for current weapon.
	match CheckExpExit mind lock
	match CheckExpExit nearly locked
	match CheckExpContinue EXP HELP
	put sk %1
	matchwait 3

CheckExpContinue:
	calculate Period clear
	pausepart 5
	goto ANALYZE

CheckExpExit:
	echo
	echo * * *
	echo * * * The skill designated "%1" is locked.
	echo * * *
	echo
	exit

EarlyEnd:
echo * * * Script overridden, exiting...
exit
