#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';

# array
# negative indices to get entries from the end and working backwards
# $array[-1]

#print "richard@sap.com"; # Runtime Error
print "richard\@sap.com"; # works

my @array = ("hallo", "welt");
print $array[0]; # = hallo
print $array[-1]; # = welt

#array length
print "This array has ".(scalar @array)."elements"; # "This array has 2 elements"
print "The last populated index is ".$#array;       # "The last populated index is 1"

# variables can be interpolated to strings
print @array; # = hallo welt
my $string = "welt";
print "hallo $string"; # = hallo welt