split(H, [A|X], [A|Y], Z) :-
  order(A, H), split(H, X, Y, Z).
split(H, [A|X], Y, [A|Z]) :-
  not(order(A, H)), split(H, X, Y, Z).
split(_, [], [], []).
quicksort([], X, X).
quicksort([H|T], S, X) :-
  split(H, T, A, B),
  quicksort(A, S, [H|Y]),
