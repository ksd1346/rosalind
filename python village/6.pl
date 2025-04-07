use strict;
use warnings;
my %hash;

open FILE , "rosalind_ini6.txt";

while (<FILE>) {
    my @words = split / /, $_;
    for (my $i = 0 ; $i < @words; $i++) {
        $hash{$words[$i]}++;  
    }
}

foreach (keys %hash) {
    print "$_ $hash{$_} \n";
}
