use strict;
use warnings;
use LWP::Simple;

open FILE, "rosalind_mprt.txt";

while (<FILE>) {
  my @index;
  chomp;
  s/\r//g;
  my $id = $_;
  (my $url = $_) =~ s/_.+//g;
  my $protein = get "http://www.uniprot.org/uniprot/$url.fasta";
  $protein =~ s/^>.+\n//g;
  chomp $protein;
  $protein =~ s/\n//g;
  while ($protein =~ /(?=(N[^P][ST][^P]))/g) {
    push @index, $-[0]+1;
  }
  if (scalar @index != 0) {
    print "$id\n";
    print "@index\n";
  }
}

close FILE;
