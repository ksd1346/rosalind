use strict;
use warnings;

my $seq = "GATGGAACTTGACTACGTAAATT";
(my $rna = $seq) =~ s/T/U/;
print $rna;
