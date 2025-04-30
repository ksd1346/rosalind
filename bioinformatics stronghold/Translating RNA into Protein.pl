use strict;
use warnings;


=pot
codon table

TTG     L
TCT     S
TCC     S
TCA     S   
TCG     S   
TAT     Y   
TAC     Y   
TGT     C   
TGC     C   
TGG     W   
CTT     L   
CTC     L   
CTA     L   
CTG     L   
CCT     P   
CCC     P   
CCA     P   
CCG     P   
CAT     H   
CAC     H   
CAA     Q   
CAG     Q   
CGT     R   
CGC     R   
CGA     R   
CGG     R   
ATT     I   
ATC     I   
ATA     I   
ATG     M   
ACT     T   
ACC     T   
ACA     T   
ACG     T   
AAT     N   
AAC     N   
AAA     K   
AAG     K   
AGT     S   
AGC     S   
AGA     R   
AGG     R   
GTT     V   
GTC     V   
GTA     V   
GTG     V   
GCT     A   
GCC     A   
GCA     A   
GCG     A   
GAT     D   
GAC     D   
GAA     E   
GAG     E   
GGT     G   
GGC     G   
GGA     G  
GGG     G

=cut

open CODON, "CodonUsage.txt";

my %codon;
my $protein;

while (my $line = <CODON>) {
    chomp($line);
    my @split = split /\t/, $line;
    $split[0] =~ s/T/U/g;
    $codon{$split[0]} = $split[1];
}

close CODON;

my $strna = "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA";

for (my $i = 0; $i < length($strna); $i+=3) {
    $protein .= $codon{substr($strna,$i,3)};
}


print $protein;

