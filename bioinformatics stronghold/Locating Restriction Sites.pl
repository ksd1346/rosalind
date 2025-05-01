use strict;
use warnings;

my $s = "TCAATGCATGCGGGTCTATATGCAT";
my @sites;
my %seen;

for my $i (4..12) {
    for my $j (0..length($s)-1) {
        if (!$seen{substr($s,$j,$i)} && length(substr($s,$j,$i)) >= 4 && length(substr($s,$j,$i)) <= 12) {
            push @sites, substr($s,$j,$i);
            $seen{substr($s,$j,$i)} = 1;
        }   
    }   
}

my @ans;

for my $i (@sites) {
    my $j = reverse $i; 
    $j =~ tr/ATGC/TACG/;
    my $pos = 0;
    if ($i eq $j) {
        while ($s =~ /$i/g) {
            push @ans, [pos($s)-length($i)+1,length($i)];
        }   
    }   
}

for my $i (0..$#ans) {
    print "$ans[$i][0] $ans[$i][1]\n";
}

