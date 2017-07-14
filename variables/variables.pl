#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';

# declaration with my
# perl comes with 3 types: scalar $, array @, hashes %

# scalar
my $num = 4040.50;
print $num . "\n"; # result: 4040.50

# string concatenation . like in php

# no boolean in perl, scalar in if statement evaluates "false" if
$num = undef; # NULL in PHP
$num = 0; $num = ""; $num = "0";

# scalars behaviour depends on the operator with which it is used
my $str1 = "4G"; my $str2 = "4H";
print $str1 . $str2; # 4G4H because String Operator
print $str1 + $str2; # 8 with two warnings
print $str1 eq $str2; # "" emptry string like false / String operator
print $str1 == $str2; # 1 with two warnings / Number Operator
    # Nummerical operators: <, >, <=, >=, ==, !=, <=>, +, *
    # String operators: lt, gt, le, ge, eq, ne, cmp, ., x