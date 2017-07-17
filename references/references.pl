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


# $blubb = {} denote an anonymous hash, $blubb = [] anonymous array

my %account = (
    "number" => "31415926",
    "opened" => "3000-01-01",
    # owners is a reference to an anonymous hash
    "owners" => [
        {
            "name" => "Philip Fry",
            "DOB"  => "1974-08-06",
        },
        {
            "name" => "Hubert Farnsworth",
            "DOB"  => "2841-04-09",
        },
    ],
);