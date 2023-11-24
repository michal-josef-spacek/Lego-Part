#!/usr/bin/env perl

use strict;
use warnings;

use Lego::Part;

# Object.
my $part = Lego::Part->new(
        'color' => 'red',
        'design_id' => '3002',
);

# Print color and design ID.
print 'Color: '.$part->color."\n";
print 'Design ID: '.$part->design_id."\n";

# Output:
# Color: red
# Design ID: 3002