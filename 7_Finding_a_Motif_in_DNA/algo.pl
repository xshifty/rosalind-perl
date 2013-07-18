#!/usr/bin/env perl

use strict;
use warnings;

sub motif_pos {
  my ($s, $t) = @_;
  my @positions;
  
  $t =~ s/^\s+|\s+$//g;
  push @positions, $-[0] + 1 while $s =~ /(?=$t)/g;
  
  return @positions;
}

my @strings;

while ( (scalar @strings < 2) && (my $line = <>) ) {
  push @strings, $line;
}

if ( defined($strings[0]) && defined($strings[1]) ) {
  print join(' ', motif_pos($strings[0], $strings[1]) );
}

__END__;