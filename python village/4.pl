use strict;
use warnings;
my ($a,$b) = split / /,<>;
my $sum_odd;
for ($a..$b) {
    $sum_odd += $_ if $_ % 2 != 0;
}

print $sum_odd;
