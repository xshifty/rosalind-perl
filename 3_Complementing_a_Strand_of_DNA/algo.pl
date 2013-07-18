#!/usr/bin/env perl

while (my $line = <>) {
  chomp $line;
  $line =~ tr/[ACGT]/[TGCA]/;
  my $reversed = reverse $line;
  print "$reversed\n";
}