#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';

# array modification

my @array_stack = ("das", "ist", "ein", "array");
print @array_stack;
print "\n";

# pop extracts and returns the final element of the array
print "pop: " . pop @array_stack;
print "\n";
print @array_stack;


# push appends an element to the end of the array
push @array_stack, "test" , "!";
print "\n";
print @array_stack;
print "\n";


# shift extracts and returns the first element of the array
print shift @array_stack;
print "\n";
print @array_stack;
print "\n";

# unshift inserts new elements at the beginning
unshift @
