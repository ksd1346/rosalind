use strict;
use warnings;
use feature "say";

my $seq = "GATATATGCATATACTT";
my $motif = "ATAT";
my $motif_length = length $motif;

for my $i (1..length($seq)) {
  say $i if substr($seq,$i-1,$motif_length) eq $motif;
}
