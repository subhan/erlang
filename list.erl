-module(list).
-export([sum/1,reverse/1,qsort/1,count/1,permutations/1,main/1]).
%-export([main/1]).


main([A])	->
	io:format("args ~w~n",A),
	F = count(A),
	io:format("factorial ~w~n",[F]),
	init:stop().

sum([H|T])	-> H + sum(T);
sum([])	-> 0.

reverse([H|T])	-> reverse(T) ++ [H];
reverse([])	-> [].	

qsort([])	-> [];
qsort([Pivot|T]) ->
	qsort([X || X <- T, X < Pivot])
	++[Pivot]++
	qsort([X || X <- T, X >= Pivot]).

count([])	-> 0;
count([_|T]) -> 1 + count(T).

permutations([]) -> [[]];
permutations(L) -> [[H|T] || H <- L, T <- permutations(L--[H])].

