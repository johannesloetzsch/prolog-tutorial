:- module(facts_about_prolog, [ (fact)/4 ]).

/**
##### Import from a prolog repl

```pl
?- ['src/facts_about_prolog.pl'].
```


##### Query facts about prolog

```pl
?- fact("prolog", _, P, O).
```

*/

%% fact(Subject, P1, P2, Object)
%
% Some human readable propositions

fact("prolog", "is", "a", "programming language").
fact("prolog", "has", "origins in", "artificial intelligence").
fact("prolog", "has", "origins in", "automated theorem proving").
fact("prolog", "has", "origins in", "computational linguistics").
fact("prolog", "is", "based on", "first-order logic").
fact("first-order logic", "is", "also called", "predicate logic").
fact("prolog", "is", "based on", "horn clauses").
