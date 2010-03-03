-module(fib).
-export([fibnocci/1]).
fibnocci(1) -> 1;
fibnocci(0) -> 1;
fibnocci(N) -> fibnocci(N-1)+fibnocci(N-2).
