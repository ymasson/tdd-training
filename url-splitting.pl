#!/usr/bin/perl -w

use strict;
use warnings;

my $param;

$param = @_;
print ("$param \n");

sub get_protocol
{
  my $i = shift;
  print("$i \n");
  my $string = '://';
  my @split_res = split(/$string/, $i);
  my $split_res;
  print("$split_res[0] \n");
  print ("protocol : $split_res[0]\n");
}

sub get_domain
{
  my $i = shift;
  print($i);
  my $string = '://';
  my @split_res = split(/$string/, $i);
  my $split_res;
  print($split_res[1]);
  print ("domain   : $split_res[1]");
}


get_protocol($param);
get_domain($param);

#print("protocol : http\n");
#print("domain   : www.test.com\n");

exit 0;
