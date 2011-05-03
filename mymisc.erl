-module(mymisc).
-export([for/2,filter/2]).
for(Max,Max) -> [Max];
for(I,Max) -> [I|for(I+1,Max)].

filter(Pred, []) -> [];
filter(Pred, [H|T]) ->
	case Pred(H) of
		true  -> [H | filter(Pred, T)];
		false -> filter(Pred, T)
	end.
