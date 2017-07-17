#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';


#if ( ) {
# print foo;
#} elsif( ) {
# print bar;
#} else {
# print foobar;
#}

#unless...else... should be refactored to if/else blocks
# but this is recommended because it is easy to read
my $temperature = 20;
print "It's cold!" unless $temperature > 15;



