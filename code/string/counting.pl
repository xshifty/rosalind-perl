#!/usr/bin/env perl

use strict;
use warnings;

my %nucleotides = (
  A => 0,
  C => 0,
  G => 0,
  T => 0,
);

my @order = qw(A C G T);

while (my $line = <>) {
  chomp $line;  
  for my $letter ( keys( %nucleotides ) ) {
    $nucleotides{$letter} += ( () = $line =~ /$letter/g );
  }
}

my @output = @{nucleotides}{ @order };

print join(' ', @output);

__END__;