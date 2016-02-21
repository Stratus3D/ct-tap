-module(ctap_SUITE).

%% Common Test callbacks
-export([all/0,
         suite/0,
         groups/0,
         init_per_suite/1,
         end_per_suite/1,
         group/1,
         init_per_group/2,
         end_per_group/2,
         init_per_testcase/2,
         end_per_testcase/2]).

%% Test cases
-export([my_test_case/1]).

-include_lib("common_test/include/ct.hrl").

%%%===================================================================
%%% Common Test callbacks
%%%===================================================================

all() ->
    [my_test_case].

suite() ->
    [{timetrap, {seconds, 30}}].

groups() ->
    [].

init_per_suite(Config) ->
    % Run the ctap_example test suite
    %Result = os:cmd("make example_ctap_test"),
    %Result = ct:run_test([{suite, [ctap_usage]}, {ct_hooks, [ctap]}, {logdir, "logs/example_ctap"}]),
    %ct:pal("Result: ~w", [Result]),
    Config.

end_per_suite(_Config) ->
    ok.

group(_GroupName) ->
    [].

init_per_group(_GroupName, Config) ->
    Config.

end_per_group(_GroupName, _Config) ->
    ok.

init_per_testcase(_TestCase, Config) ->
    Config.

end_per_testcase(_TestCase, _Config) ->
    ok.

%%%===================================================================
%%% Test cases
%%%===================================================================

my_test_case(_Config) ->
    %Result = ct:run_test([{suite, [ctap_usage]}, {ct_hooks, [{ctap, [{filename, "test.tap"}]}]}, {logdir, "logs/example_ctap"}]),
    %ct:pal("Result: ~w", [Result]),
    ok.