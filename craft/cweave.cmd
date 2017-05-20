#Weave
#  Parameters.  .weave <Thread type> <Container>
#  Just make sure you have two equal size (and type) thread spools
#  at the top of your container

  put get %1 thread from my %2
  pause 1
  put put my thread on loom
  pause 1
  put get %1 thread from my %2
  pause 1
  put put my thread on loom

Weave:
  pause 1
  match End placed on it
  match End need a free hand
  match Turn Several weft threads bunch together
  match Turn bunching up from excessive tension
  match Push needs pushing together
  match Push fell and need pushing together
  match Clean dust and debris obstructing
  match Weave Roundtime
  put weave loom
matchwait

Turn:
  pause 1
  match End placed on it
  match End need a free hand
  match Turn Several weft threads bunch together
  match Turn bunching up from excessive tension
  match Push needs pushing together
  match Push fell and need pushing together
  match Clean dust and debris obstructing
  match Weave Roundtime
  put turn loom
matchwait

Push:
  pause 1
  match End placed on it
  match End need a free hand
  match Turn Several weft threads bunch together
  match Turn bunching up from excessive tension
  match Push needs pushing together
  match Push fell and need pushing together
  match Clean dust and debris obstructing
  match Weave Roundtime
  put push loom
matchwait

Clean:
  pause 1
  match End placed on it
  match End need a free hand
  match Turn Several weft threads bunch together
  match Turn bunching up from excessive tension
  match Push needs pushing together
  match Push fell and need pushing together
  match Clean dust and debris obstructing
  match Weave Roundtime
  put clean loom
matchwait

End:
ECHO
ECHO ALL DONE!
ECHO
exit