use strict;
use warnings;

sub fib {
    my ($n,$k) = @_;
    my @dp = (0,1);
    for (0..$n-2) {
        $dp[$_] = $dp[$_-1] + $dp[$_-2]*$k;
    }
    return $dp[-1];
}

print fib(5,3);
