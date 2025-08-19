use strict;
use warnings;

my $seq = "AAAACCCGGT";
(my $strand = reverse $seq) =~ tr/ATGC/TACG/;
print $strand;
