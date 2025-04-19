use strict;
use warnings;

my $cnt;
my $s = <>;
my $t = <>;

for (0..length($s)-1) {
  $cnt++ if substr($s,$_,1) ne substr($t,$_,1);
}

print $cnt;
