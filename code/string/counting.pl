#!/usr/bin/env perl

use strict;
use warnings;

open IFILE, '<', '../../data/string/counting.txt' or die('File not found');

my @nucleotides = qw(0 0 0 0);

while (my $line = <IFILE>) {
  chomp $line;
  
  $nucleotides[0] += ($line =~ tr/A/g/);
  $nucleotides[1] += ($line =~ tr/C/g/);
  $nucleotides[2] += ($line =~ tr/G/g/);
  $nucleotides[3] += ($line =~ tr/T/g/);
}
close IFILE;

open OFILE, '>', '../../output/string/counting.txt' or die('Can\'t create file');
print OFILE join(" ", @nucleotides);
close OFILE;