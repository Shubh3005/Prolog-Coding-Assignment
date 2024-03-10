% Declare the facts here
friend(john, lisa).
friend(john, bob).
friend(bob, alice).
friend(alice, emma).
friend(emma, tom).
friend(tom, lisa).

hobby(john, reading).
hobby(john, hiking).
hobby(bob, painting).
hobby(bob, hiking).
hobby(alice, reading).
hobby(alice, painting).
hobby(emma, painting).
hobby(emma, hiking).
hobby(tom, reading).
hobby(tom, hiking).
hobby(lisa, painting).
hobby(lisa, reading).

% Complete the following horn clause. (You may need to write addtional/helper rules to construct the rule below)
hobbies(X, Y) :- hobby(X, H), hobby(Y, H), X \= Y.
friends(X, Y) :- friend(X, F), friend(Y, F), X \= Y.

social_group_member(X) :- hobbies(X, _), friends(X, _).