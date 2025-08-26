use strict;
use warnings;

my $seq = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
my $count_A = $seq =~ tr/A//;
my $count_T = $seq =~ tr/T//;
my $count_G = $seq =~ tr/G//;
my $count_C = $seq =~ tr/C//;

print "$count_A $count_T $count_G $count_C";
