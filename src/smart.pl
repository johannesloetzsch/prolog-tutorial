:- module(facts_about_prolog, [ (smart)/1, (nobel_prize_winner)/1, (turing_award_winner)/1, (logic_programmer)/1, (familiar_with_prolog)/1, (problem_solver)/1, (knowledgeable)/1 ]).

/** 
The example is used at [Semantics](./learn/semantics.html)
*/

nobel_prize_winner("Marie Curie").
turing_award_winner("Marvin Minsky").
turing_award_winner("Edsger Wybe Dijkstra").
turing_award_winner("Frances Allen").
turing_award_winner("Barbara Liskov").
turing_award_winner("Shafi Goldwasser").
familiar_with_prolog(you).

smart(Person) :- nobel_prize_winner(Person).
smart(Person) :- turing_award_winner(Person).
smart(Person) :- knowledgeable(Person), problem_solver(Person).
knowledgeable(P) :- familiar_with_prolog(P).
problem_solver(P) :- logic_programmer(P).
logic_programmer(P) :- familiar_with_prolog(P).
