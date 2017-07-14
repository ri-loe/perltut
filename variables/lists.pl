#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';

# perl doesnt know whether its a hash or an array so it flattens the list out into a single long list ( )

my %hash = (
    "beer" => "good",
    "bananas" => (
        "green"  => "wait",
        "yellow" => "eat",
    ),
);
# The above raises a warning because the hash was declared using a 7-element list

print $hash{"beer"};    # "good"
print $hash{"bananas"}; # "green"
print $hash{"wait"};    # "yellow";
print $hash{"eat"};     # undef, so prints "" and raises a warning

