setvariable shield shield
setvariable picker_upper_hand %1
setvariable item_to_look_at helm

coin:
match coin ...wait
match coin You pick
match glance What were you
put get coin
matchwait

glance:
match glance ...wait
match glance manage
match broadsword broadsword
match morning_star morning star
match bola bola
match pasabas pasabas
match sword sword
match hammer hammer
match blades blades
match axe axe
match crossbow crossbow
match mallet mallet
match misericorde misericorde
match stow_picker_upper_hand %shield%
match stow_picker_upper_hand empty hands
put glance
matchwait

broadsword:
setvariable weapon broadsword
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match broadsword ...wait
match broadsword manage
put look my %item_to_look_at%
matchwait

blades:
setvariable weapon blade
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match blades ...wait
match blades manage
put look my %item_to_look_at%
matchwait

sword:
setvariable weapon sword
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match sword ...wait
match sword manage
put look my %item_to_look_at%
matchwait

mallet:
setvariable weapon mallet
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match mallet ...wait
match mallet manage
put look my %item_to_look_at%
matchwait

misericorde:	
setvariable weapon misericorde
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match misericorde ...wait
match misericorde manage
put look my %item_to_look_at%
matchwait

pasabas:
setvariable weapon pasabas
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match pasabas ...wait
match pasabas manage
put look my %item_to_look_at%
matchwait

morning_star:
setvariable weapon morning star
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match morning_star ...wait
match morning_star manage
put look my %item_to_look_at%
matchwait

bola:
setvariable weapon bola
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match bola ...wait
match bola manage
put look my %item_to_look_at%
matchwait

hammer:
setvariable weapon steel hammer
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match hammer ...wait
match hammer manage
put look my %item_to_look_at%
matchwait

axe:
setvariable weapon axe
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match axe ...wait
match axe manage
put look my %item_to_look_at%
matchwait

crossbow:
setvariable weapon crossbow
match stow_picker_upper_hand nothing unusual
match stow_picker_upper_hand What were you referring
match crossbow ...wait
match crossbow manage
put look my %item_to_look_at%
matchwait

stow_picker_upper_hand:
match stow_picker_upper_hand ...wait
match stow_picker_upper_hand manage
match gems You put
match gems What were you referring
match gems Perhaps you should be holding that first
match gems stow
put stow %picker_upper_hand% 
matchwait

gems:
match gems ...wait
match gems manage
match gems You put
match boxes Stow what
match boxes_canvas_sack There isn't any more room
match boxes_canvas_sack You just can't get
put stow gem 
matchwait

boxes:
match boxes ...wait
match boxes manage
match boxes You put
match boxes_canvas_sack There isn't any more room
match boxes_canvas_sack You just can't get
match wield_shield Stow what
put stow box 
matchwait

boxes_canvas_sack:
match boxes_canvas_sack ...wait
match boxes_canvas_sack manage
match boxes_canvas_sack You put
match empty_picker_upper_hand There isn't any more room
match empty_picker_upper_hand You just can't get
match wield_shield Stow what
put stow box in sack
matchwait

wield_shield:
match wield_shield ...wait
match wield_shield manage
match weapon_wield You get
match weapon_wield referring
match weapon_wield already
match empty_picker_upper_hand free hand
put get my %shield%
matchwait

weapon_wield:
match weapon_wield ...wait
match weapon_wield manage
match end pick 
match end get
match end already
match empty_picker_upper_hand  free hand
put get my %weapon%
matchwait

empty_picker_upper_hand:
match empty_picker_upper_hand …wait
match empty_picker_upper_hand manage
match wield_shield You drop
match wield_shield already empty
put empty %picker_upper_hand%
matchwait

end:
ECHO EXPLOITING POOR LITTLE CRITTERS.  YOU KNOW THEY HAVE MOTHERS TOO!