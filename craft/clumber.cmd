# Clumber: craft lumber
#
# This should take raw wood and transform it into raw lumber.
#

setvariable Toolbag rucksack
setvariable Rawbag bag
setvariable Woodbag rucksack

put get my %1 from my %Rawbag
waitfor You get

put get my saw from my %Toolbag
waitfor You get

Saw:
match Saw You begin sawing
match Saw The blade vanishes as it cuts deeper into the wood
match Transition Finally you complete
put cut my %1 with my saw
matchwait 5
goto ScriptError

Transition:
put put my saw in my %Toolbag
waitfor You put
put get my drawknife from my %Toolbag
waitfor You get
goto Scrape

Scrape:
match Scrape You begin scraping
match Scrape With most of the bark removed
match Finish At last your work completes
put scrape my %1 with my drawknife
matchwait 5
goto ScriptError

Finish:
put put my drawknife in my %Toolbag
waitfor You put
put put my lumber in my %Woodbag
echo * * * Lumber has been cut and refined.
exit

ScriptError:
echo * * * Something didn't happen that we expected to happen.
exit
LabelError:
echo * * * Label error; exiting.
exit
