   wizard(ron). 
   hasWand(harry). 
   quidditchPlayer(harry). 
   discontiguous wizard(X):-  hasBroom(X),  hasWand(X). 
   hasBroom(X):-  quidditchPlayer(X).