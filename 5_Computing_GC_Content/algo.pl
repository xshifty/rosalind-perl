#!/usr/bin/env perl

use strict;
use warnings;

my %strings;
my $label;

while (my $line = <>) {
  $line =~ s/^\s+|\s+$//g;
  
  if ($line =~ m/^\>(.+)$/) {
    $label = $1;
    $strings{$label} = {
      data => '',
      size => 0,
      occur => 0,
      perc => 0,
    };
  } else {
    $strings{$label}{data} .= $line;
    $strings{$label}{length} = length $strings{$label}->{data};
    $strings{$label}{occur} = ( () = $strings{$label}->{data} =~ /G|C/g );
    $strings{$label}{perc} = ($strings{$label}->{occur} / $strings{$label}->{length}) * 100;
  }
}

for my $key ( sort {$strings{$b}->{perc} <=> $strings{$a}->{perc}} keys(%strings) ) {
  my $data = $strings{$key};
  print "$key\n";
  print sprintf("%.6f", $data->{perc});
  exit;
}

__END__;