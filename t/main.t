#!/usr/bin/perl
# ==============================================================================
#
#   Helix Framework
#   Copyright (c) 2009, Atma 7
#   ---
#   t/main.t - PostgreSQL database driver tests
#
# ==============================================================================  

use Test::More tests => 9;
use warnings;
use strict;

# ------------------------------------------------------------------------------
# BEGIN()
# test initialization
# ------------------------------------------------------------------------------
BEGIN
{
    use_ok("Helix::Driver::Exceptions");
    use_ok("Helix::Driver::DB");
    use_ok("Helix::Driver::DB::PostgreSQL");
}

# methods
ok( Helix::Driver::DB::PostgreSQL->can("execute"),          "execute method"          );
ok( Helix::Driver::DB::PostgreSQL->can("execute_prepared"), "execute_prepared method" );
ok( Helix::Driver::DB::PostgreSQL->can("fetch"),            "fetch method"            );
ok( Helix::Driver::DB::PostgreSQL->can("fetch_all"),        "fetch_all method"        );
ok( Helix::Driver::DB::PostgreSQL->can("free"),             "free method"             );
ok( Helix::Driver::DB::PostgreSQL->can("call"),             "call method"             );

