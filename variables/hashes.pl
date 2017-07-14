#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';


# => as alias to indicate key/value pairs
my %data = ('John' => 40, 'Lisa' => 27);

# escaped john as string, second is the key value (scalar access)
print "\$data{'John'} = $data{'John'}" . "\n";

# list of all keys in hash
my @keys = keys %data;
# access to values returns scalar values --> $
print $keys[0] . " " . $keys[1] . "\n";

# all values of the hash as array
my @ages = values %data;
print "$ages[0] " . "$ages[1]\n";

# forcing scalar on array, results in value count
print scalar(@keys) . "\n";

# checking for existence TODO
my $input = <STDIN>;
if (exists($data{$input})) {
    print $input . ' ist in \$data.\n';
} else {
    print "Lege $input in \$data an!\n";
}

#arrays and hashes cannot contain other arrays and hashes as elements. They can only contain scalars.

my @outer = ("Sun", "Mercury", "Venus", undef, "Mars");
my @inner = ("Earth", "Moon");

$outer[3] = @inner;

print $outer[3]; # "2"
# $outer[3] is a scalar, so it demands a scalar value. When you try to assign an array value like @inner to it,
# @inner is evaluated in scalar context. This is the same as assigning scalar @inner,
# which is the length of array @inner, which is 2.
