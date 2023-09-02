% Define facts and rules

% Fact: Birds
bird(sparrow).
bird(eagle).
bird(penguin).
bird(ostrich).
bird(kiwi).

% Rule: Birds that can fly
can_fly(X) :-
    bird(X),
    not(flightless(X)).

% Rule: Flightless birds
flightless(penguin).
flightless(ostrich).

% Rule: Birds that are predators
predator(X) :-
    bird(X),
    not(preys_on_fish(X)).

% Rule: Birds that prey on fish
preys_on_fish(eagle).

% Define the goal or query
query(X) :- can_fly(X), predator(X).

% Queries
%?- query(X).
