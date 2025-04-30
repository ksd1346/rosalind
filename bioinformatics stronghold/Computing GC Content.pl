use strict;
use warnings;
use List::Util "max";

my %seq;
my $id;
my @gc;
my %gc_max;
open FILE, "rosalind_gc.txt";

while (my $line = <FILE>) {
  chomp($line);
  $line =~ s/\r//g;
  if ($line =~ /^>(.+)/) {
    $id = $1;
  }else {
    $seq{$id} .= $line;
    }
}

close FILE;

foreach my $dna (keys %seq) {
  my $len = length $seq{$dna};
  my $count_gc = $seq{$dna} =~ tr/GC/GC/;
  my $gc_content = $count_gc / $len * 100;
  $gc_max{$gc_content} = $dna;
  push @gc,$gc_content;
}

print $gc_max{max(@gc)},"\n",max @gc;
