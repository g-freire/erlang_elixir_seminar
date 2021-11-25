%%%-------------------------------------------------------------------
%%% @author gfreire
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. nov 2021 01:36
%%%-------------------------------------------------------------------
-module(hello).
-author("gfreire").

%% API
-export([hello_world/0]).

hello_world() -> io:fwrite("hello, world\n").