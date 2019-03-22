front(grumpy,dopey).
inbehind(stumpy,sneezy).
inbehind(stumpy,doc).
front(doc,droopy).
front(doc,happy).
inbehind(sleepy,stumpy).
inbehind(sleepy,smelly).
inbehind(sleepy,happy).
front(happy,sleepy).
front(happy,smelly).
front(happy,bashful).
inbehind(bashful,smelly).
inbehind(bashful,droopy).
inbehind(bashful,sleepy).
front(sneezy,dopey).
front(smelly,grumpy).
front(smelly,stumpy).
front(smelly,sneezy).
front(dopey,droopy).
front(sleepy,grumpy).
front(sleepy,bashful).
inbehind(dopey,sneezy).
inbehind(dopey,doc).
inbehind(dopey,sleepy).
front(stumpy,dopey).
inbehind(smelly,doc).

inFrontof(X,Y):-
front(X,Y);
inbehind(Y,X).


behind(X,Y):-
inFrontof(Y,X);
inbehind(X,Y).