#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';#

#
#   References
#

# reference is created using a backslash \
my $color = 'blue';
my $scalarRef = \$color;

print $color;           # blue
print $scalarRef;       # e.g. SCALAR(9x182c1890)
print ${ $scalarRef };  # blue

# referencing an array or hash { }
my @color = ('Red', 'Orange', 'Yellow', 'Green', 'Blue');
my $arrayRef = \@color;

print $color[0];       # direct array access
print ${ $arrayRef }[0]; # use the reference to get to the array
print $arrayRef->[0];    # exactly the same thing


my %atomicWeights = ("Hydrogen" => 1.008, "Helium" => 4.003, "Manganese" => 54.94);
my $hashRef = \%atomicWeights;

print $atomicWeights{"Helium"}; # direct hash access
print ${ $hashRef }{"Helium"};  # use a reference to get to the hash
print $hashRef->{"Helium"};     # exactly the same thing - this is very common
