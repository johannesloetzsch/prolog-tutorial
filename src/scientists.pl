:- module(scientists, [ (logician)/1, (computer_pioneer)/1 ]).

/** Knowledge base with very simple facts.

This might be an example suitable for first steps of learning prolog…


## Boolean operators

*AND* ([conjunction](https://en.wikipedia.org/wiki/Logical_conjunction))

query for `computer_pioneer`s who also are `logician`s

```pl
?-
computer_pioneer(Who), logician(Who).
```

*OR* ([disjunction](https://en.wikipedia.org/wiki/Logical_disjunction))

query for `computer_pioneer`s or `logician`s

```pl
?-
computer_pioneer(Who); logician(Who).
```

*NOT* ([negation](https://en.wikipedia.org/wiki/Negation))

query for `logician`s, who are not (primarily) known as `computer_pioneer`

```pl
?-
logician(Who), \+ computer_pioneer(Who).
```


## Predicate --> RelationSet

Translate the *Predicate* `logician/1` into a *Relation* represented by a set.

```pl
?-
findall(X, logician(X), RelationSet).
//->  X = A, RelationSet = ["Aristoteles","Charles Babbage","Kurt Gödel","David Hilbert","Gottlob Frege","Gottfried Wilhelm Leibniz","Blaise Pascal","Amir Pnueli","Emil Leon Post","Michael Oser Rabin","Bertrand Russell","Alfred Tarski","Alan Turing","Ludwig Wittgenstein"].
```
*/

%% logician(Name)
%
% A set of logicians

logician("Aristoteles").
logician("Charles Babbage").
logician("Kurt Gödel").
logician("David Hilbert").
logician("Gottlob Frege").
logician("Gottfried Wilhelm Leibniz").
logician("Blaise Pascal").
logician("Amir Pnueli").
logician("Emil Leon Post").
logician("Michael Oser Rabin").
logician("Bertrand Russell").
logician("Alfred Tarski").
logician("Alan Turing").
logician("Ludwig Wittgenstein").

%% computer_pioneer(Name)
%
% A set of computer pioneers

computer_pioneer("Charles Babbage").
computer_pioneer("Noam Chomsky").
computer_pioneer("Alonzo Church").
computer_pioneer("Edsger Wybe Dijkstra").
computer_pioneer("Kurt Gödel").
computer_pioneer("Sir Charles Antony Richard Hoare").
computer_pioneer("Stephen Cole Kleene").
computer_pioneer("Donald Knuth").
computer_pioneer("Ada Lovelace").
computer_pioneer("Marvin Minsky").
computer_pioneer("John von Neumann").
computer_pioneer("Amir Pnueli").
computer_pioneer("Emil Leon Post").
computer_pioneer("Michael Oser Rabin").
computer_pioneer("Bertrand Russell").
computer_pioneer("Ken Thompson").
computer_pioneer("Alan Turing").
computer_pioneer("Joseph Weizenbaum").
computer_pioneer("Konrad Zuse").
