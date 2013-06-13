-module(mnesia_external_mod).



-callback create_table(Tab::atom(), Cs::record()) -> ok | {error, Reason::term()}.

-callback delete_table(Tab::atom()) -> ok | {error, Reason::term()}.

-callback init_index(Tab::atom(), PosList::list())-> ok | {error, Reason::term()}.

-callback update_counter(Tab::atom(), C::term(), Val::term()) -> ok.
