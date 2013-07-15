#!/usr/bin/env perl

use strict;
use warnings;

open IFILE, '<', '../../data/string/dna2rna.txt' or die('File not found.');
open OFILE, '>', '../../output/string/dna2rna.txt' or die ('Can\'t create file.');

my $output = '';

while (my $line = <IFILE>) {
  chomp $line;  
  $line =~ s/T/U/gi;
  $output .= "$line\n";
}

chomp $output;

print OFILE $output;

close IFILE;
close OFILE;