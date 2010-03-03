-module(even).
-export([even_list/2]).
even_list(A,B) ->
	lists:filter(fun(N) -> N rem 2 =:= 0 end,
		mymisc:for(A,B,fun(X) -> X end)).

% even_list(1,10).
% [2,4,6,8,10]
