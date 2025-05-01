use strict;
use warnings;

open F, "rosalind_lcsm.txt";

my $id;
my %seq;

while (<F>) {
    chomp;
    s/\r//g;
    if (/^>(.+)/) {
        $id = $1;
        $seq{$id} = "";
    }else {
        $seq{$id} .= $_;
    }
}

close F;

my @stseq = values %seq;
my $len = length $stseq[0];


my $longest_common = '';
for my $i (reverse 1..$len) {
    for my $j (0..$len-$i) {
        my $substr = substr($stseq[0], $j, $i);
        my $is_common = 1;

        for my $seq (@stseq[1..$#stseq]) {
            if (index($seq, $substr) == -1) {
                $is_common = 0;
                last;
            }
        }

        if ($is_common && length($substr) > length($longest_common)) {
            $longest_common = $substr;
        }
    }
    last if $longest_common;
}

print "$longest_common\n";   
