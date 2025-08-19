use strict;
use warnings;

sub factorial {
    my $n = shift;
    return $n == 0 || $n == 1 ? 1 : $n * perm($n-1);
}

my ($n,$k) = (21,7);

print factorial($n) / factorial($n-$k) % 1E6;
