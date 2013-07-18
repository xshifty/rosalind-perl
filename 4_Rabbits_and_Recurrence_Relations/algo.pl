#!/usr/bin/env perl

use strict;
use warnings;

sub fibonacci {
  my ($n, $k, @stack) = @_;
  
  while (scalar @stack < $n) {
    push @stack, int($stack[-1]) + int($stack[-2]) * $k;
  }
  
  return $stack[-1];
}

while (my $line = <>) {
  my ($n, $k) = split ' ', $line;
  print fibonacci( $n, $k, (1, 1) );
}

__END__;