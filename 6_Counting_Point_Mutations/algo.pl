#!/usr/bin/env perl

use strict;
use warnings;

sub hamming_distance {
  my ($s1, $s2) = @_;
  my @sizes = sort { $a <=> $b } (length $s1, length $s2);
  my $distance = 0;
  
  for (my $i = 0; $i < $sizes[0]; $i++) {
    $distance++ if ( substr($s1, $i, 1) ne substr($s2, $i, 1) );
  }
  
  return $distance;
}

my @strings;

while ( ( scalar @strings < 2 ) && (my $line = <>) ) {
  push @strings, $line;
}

print hamming_distance($strings[0], $strings[1]);

__END__;