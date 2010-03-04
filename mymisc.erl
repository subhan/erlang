-module(mymisc).
-export([for/3,filter/2]).
for(Max,Max,F) -> [F(Max)];
for(I,Max,F) -> [F(I)|for(I+1,Max,F)].

filter(Pred, []) -> [];
filter(Pred, [H|T]) ->
	case Pred(H) of
		true  -> [H | filter(Pred, T)];
		false -> filter(Pred, T)
	end.
