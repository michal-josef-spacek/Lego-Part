# Pragmas.
use strict;
use warnings;

# Modules.
use Lego::Part;
use Test::More 'tests' => 1;

# Test.
is($Lego::Part::VERSION, 0.01, 'Version.');
