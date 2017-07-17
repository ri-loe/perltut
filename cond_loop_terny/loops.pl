#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';

my @array = ("das", "ist", "ein", "array");

#while
my $i = 0;
my $itemCount = scalar @array;
print "Array enthält $itemCount Einträge\n";
while ($i < $itemCount) {
    print $i . ": $array[$i]\n";
    $i++;
}

print "\n";

# until
$i = 0;
until ($i >= $itemCount) {
    print $i . ": $array[$i]\n";
    $i++;
}

print "\n";

# do while
$i = 0;
do {
    print "$i : $array[$i]\n";
    $i++;
} while ($i < $itemCount);

print "\n";
# do until
$i = 0;
do {
    print "$i : $array[$i]\n";
    $i++;
} until ($i >= $itemCount);

# for loop, $h only for the scope of the loop
for (my $h = 0; $i < $itemCount; $h++) {
    print "$h : $array[$h]\n";
}

print "\n";
# for / foreach = synonyms, =/= in PHP
foreach my $element (@array) {
    print $element . " ";
}
print "\n\n";

# range indicator creates an anonymous list of integers
foreach my $h (0 .. $#array) {
    print "$h : $array[$h]\n";
}

# u cant iterate over hashes but over its keys; keys may be returned in any order
my %data = ('John' => 40, 'Lisa' => 27, 'Andre' => 99, 'Horst' => 12);

foreach my $keyElement (keys %data) {
    print "$keyElement : $data{$keyElement}\n";
}
print "\n";
# $_ default iterator
foreach (@array) {
    print $_ . "\n";
}
# super short single statement loop
print "\n";
print $_ foreach @array;
print "\n\n";