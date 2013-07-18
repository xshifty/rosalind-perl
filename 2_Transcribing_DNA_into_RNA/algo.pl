#!/usr/bin/env perl

use strict;
use warnings;

while (my $line = <>) {
  $line =~ s/T/U/gi;
  print $line;
}

__END__;