Exercise  1.4 Represent the following in Prolog:

Butch is a killer.
Mia and Marsellus are married.
Zed is dead.
Marsellus kills everyone who gives Mia a footmassage.
Mia loves everyone who is a good dancer.
Jules eats anything that is nutritious or tasty.

killer(butch).
married(mia, marsellus).
dead(zed).

loves(X,mia):- goodDancer(Y).
kills(X, marsellus):- footMassage(mia).
eats(X, jules):- nutritious(Y); tasty(Z).







Exercise  1.5 Suppose we are working with the following knowledge base:


   wizard(ron). 
   hasWand(harry). 
   quidditchPlayer(harry). 
   wizard(X):-  hasBroom(X),  hasWand(X). 
   hasBroom(X):-  quidditchPlayer(X).
How does Prolog respond to the following queries?

wizard(ron). true
witch(ron). false
wizard(hermione). false
witch(hermione). false
wizard(harry). true
wizard(Y). ron; harry
witch(Y). false