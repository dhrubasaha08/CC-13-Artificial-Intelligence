parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
male(bob).
male(pat).
male(jim).
male(tom).
female(liz).
female(ann).
female(pam).
grandparent(X,Y):-parent(X,Z),parent(Y,Z).
father(X,Y):-parent(X,Y),male(X).
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X).
predec(X,Y):-parent(X,Y).
predec(X,Y):-parent(X,Z),predec(Z,Y).
state(wb).
state(bihar).
capitol(kolkata,wb).
capitol(patna,wb).
river(ganga).
river(jamuna).
flows(wb,ganga).
flows(up,jamuna).
language(bengali).
spoken(bengali,wb).
%which languages are spoken through which ganga flows?
%which are the capitols through which river flows?


flows_through_language(River, Language) :-
    flows(State, River),
    spoken(Language, State).

flows_through_capitol(River, Capitol) :-
    flows(State, River),
    capitol(Capitol, State).
