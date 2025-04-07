use strict;
use warnings;
my $index;
open FILE, "rosalind_ini5.txt";

while (<FILE>) {
    $index += 1;
    print $_ if $index % 2 == 0;
}
