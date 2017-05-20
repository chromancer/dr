Loop:
match Cast You feel fully prepared to cast your spell
match Cast Your formation of a targeting pattern
put target %1 %2
matchwait

Cast:
put cast
pausepart 5
goto Loop
