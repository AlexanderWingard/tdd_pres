-module(tdd_SUITE).

-include_lib("eunit/include/eunit.hrl").

dummy_test() ->
    ?assert(1 == 1).
