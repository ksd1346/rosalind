use strict;
use warnings;

chomp(my $st = <>);
my ($a,$b,$c,$d) = split / /,<>;

print substr($st,$a,$b-$a+1)," ",substr($st,$c,$d-$c+1),"\n";
