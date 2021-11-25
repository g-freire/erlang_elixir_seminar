-module(hello).

%% API
-export([hello_world/0, sum/2]).

% create a hello function in erl
hello_world() -> 
    io:fwrite("hello, world\n").

% create a sum function in erl
sum(A, B) ->   
    {ok, A + B}.


