
% Directed graph

edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').

edge('Makkah', 'Riyadh').

edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').

edge('Taif', 'Dammam').

edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').

edge('Dammam', 'Qatif').
edge('Qatif', 'Dammam').

edge('Qatif', 'Madinah').


travel(From, To, Path) :-
    path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).


path(X, X, Visited, Visited).

path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).
