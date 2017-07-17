#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';

#This array has five elements:

my @array1 = (1, 2, 3, 4, 5);
print @array1; # "12345"

#This array, however, has ONE element (which happens to be a reference to an anonymous, five-element array):

my @array2 = [1, 2, 3, 4, 5];
print @array2; # e.g. "ARRAY(0x182c180)"

#This scalar is a reference to an anonymous, five-element array:

my $array3Ref = [1, 2, 3, 4, 5];
print $array3Ref;      # e.g. "ARRAY(0x22710c0)"
print @{ $array3Ref }; # "12345"
print @$array3Ref;     # "12345"
