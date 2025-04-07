use v6;
my $s = "AAAACCCGGT";
.flip.trans("ATGC" => "TACG").say given $s
