#!/Users/c5261164/perl5/perlbrew/perls/perl-5.24.0/bin/perl
use strict;
use warnings FATAL => 'all';

### Loop control
# next and last == continue and break

# finds all primes below 100
sub check_prime {
    my ($int) = @_;
    for my $divisor (2 .. sqrt $int) {
        if ($int % $divisor == 0) {
            return 0;
        }
    }
    return 1;
};

for my $number (2 .. 100) {
    if (check_prime($number)) {
        print $number . " is prime\n";
    }
}


# label any loop with ALLCAPITALS, next and last target the label
CANDIDATE: for my $candidate ( 2 .. 100 ) {
    for my $divisor ( 2 .. sqrt $candidate ) {
        next CANDIDATE if $candidate % $divisor == 0;
    }
    print $candidate." is prime\n";
}

