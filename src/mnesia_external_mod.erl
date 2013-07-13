-module(mnesia_external_mod).



-callback create_table(Tab::atom(), Cs::record()) -> ok | {error, Reason::term()}.
-callback init_index(Tab::atom(), PosList::list())-> ok | {error, Reason::term()}.

-callback delete_table(Tab::atom()) -> ok | {error, Reason::term()}.

-callback delete_all_objects(Tab::atom()) -> ok | {error, Reason::term()}.
-callback update_counter(Tab::atom(), C::term(), Val::term()) -> ok. %%TODO

-callback fixtable(Tab::atom(), Bool::boolean()) -> ok | {error, Reason::term()}. %%TODO

-callback lookup(Tab::atom(), Key::term()) -> {ok, Val::term()} | {error, Reason::term()}. %%TODO
-callback delete(Tab::atom(), Key::term()) -> ok | {error, Reason::term()}. %%TODO
-callback select(Cont::term())-> {ok, Data::list()} | {error, Reason::term()}. %%TODO
-callback select(Tab::atom(), Pat::term()) -> {ok, Data::list()} | {error, Reason::term()}. %%TODO
-callback select(Tab::atom(), Pat::term(), Limit::integer()) -> {ok, Data::list()} | {error, Reason::term()}. %%TODO

-callback match_delete(Tab::atom(), Pat::term()) -> ok | {error, Reason::term()}. %%TODO
-callback match_object(Tab::atom(), Pat::term()) -> {ok, Data::term()} | {error, Reason::term()}. %%TODO


-callback slot(Tab::atom(), Pos::integer()) -> ok. %%TODO


-callback first(Tab::atom()) -> {ok, Data::term()} | {error, Reason::term()}. %%TODO
-callback next(Tab::atom(), Key::term()) -> {ok, Data::term()} | {error, Reason::term()}. %%TODO
-callback prev(Tab::atom(), Key::term()) -> {ok, Data::term()} | {error, Reason::term()}. %%TODO
-callback last(Tab::atom()) -> {ok, Data::term()} | {error, Reason::term()}. %%TODO


-callback init_chunk(Tab::atom()) -> {State::term} | {error, Reason::term()}.
-callback db_chunk(State::term()) -> '$end_of_table' |{Date::term(), State::term()} | {error, Reason::term()}.


-callback valid(Tab::atom(), Key::term()) -> ok | {error, Reason::term()}. %%TODO


