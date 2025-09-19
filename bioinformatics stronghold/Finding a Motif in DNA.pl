use strict;
use warnings;

my $seq = "GATATATGCATATACTT";
my $motif = "ATAT";
my $motif_length = length $motif;

for my $i (1..length($seq)) {
  print "$i\n" if substr($seq,$i-1,$motif_length) eq $motif;
}
