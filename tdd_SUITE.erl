-module(tdd_SUITE).

-include_lib("eunit/include/eunit.hrl").


fib(0) ->
    0;
fib(1) ->
    1;

%% fib(2) ->
%%     1;

%% fib(3) -> 
%%     1 + 1;

%% fib(N) ->
%%     fib(N-1) + 1;

fib(N) when N < 0 ->
    undefined;

fib(N) ->
    fib(N-1) + fib(N-2).

dummy_test() ->
    ?assert(1 == 1).

fib_zero_test() ->
    ?assertEqual(0, fib(0)).
fib_one_test() ->
    ?assertEqual(1, fib(1)).

fib_two_test() ->
    ?assertEqual(1, fib(2)).

fib_three_test() ->
    ?assertEqual(2, fib(3)).

fib_neg_test() ->
    ?assertEqual(undefined, fib(-4)).

fib_long_list_test() ->
    Output = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309],
    Input = lists:seq(0, length(Output)-1),
    ?assertEqual(length(Output), length(Input)),
    Res = lists:map(fun(In) -> fib(In) end, Input),
    ?assertEqual(Output, Res).


