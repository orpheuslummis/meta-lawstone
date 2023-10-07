
% Example code
memberOf(alice, council).
memberOf(bob, council).
can_vote(X) :- memberOf(X, council).

%%% Meta-Interpreter
% WIP: Doesn't cover full Prolog.
% With base and some special cases
solve(true).
solve((G1,G2)) :- solve(G1), solve(G2).
solve((G1;G2)) :- solve(G1); solve(G2).
solve(\+ G) :- \+ solve(G).
solve(!) :- !.
solve(H) :- predicate_property(H, built_in), !, H.  % FIXME predicate_property/2 not available
solve(H) :- clause(H, B), solve(B).

