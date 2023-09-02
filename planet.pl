% Facts representing properties of planets
planet(mercury, rocky, 0.39, 4879, 88).
planet(venus, rocky, 0.72, 12104, 225).
planet(earth, rocky, 1.00, 12742, 365).
planet(mars, rocky, 1.52, 6779, 687).
planet(jupiter, gas_giant, 5.20, 139822, 4333).
planet(saturn, gas_giant, 9.58, 116464, 10759).
planet(uranus, ice_giant, 19.22, 50724, 30687).
planet(neptune, ice_giant, 30.05, 49244, 60190).

% Predicate to determine if a planet is habitable
habitable(Planet) :-
    planet(Planet, rocky, DistanceFromSun, _, _),
    DistanceFromSun >= 0.7,
    DistanceFromSun =< 1.5.

% Predicate to determine if a planet is a gas giant
is_gas_giant(Planet) :-
    planet(Planet, gas_giant, _, _, _).

% Predicate to determine if a planet is an ice giant
is_ice_giant(Planet) :-
    planet(Planet, ice_giant, _, _, _).


%query: is_gas_gaint(earth)
