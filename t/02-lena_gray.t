#!/usr/bin/perl -w

use strict;

use Test::More;


open FILE, "t/data/lena_gray.output" or die "Couldn't open file: $!";
my $lena_gray_expected = join("", <FILE>);
close FILE;

my $command = 'perl jpgdec t/data/lena_gray.jpg';

my $result = `$command`;

isnt($? >> 8, 255, 'Execution without errors.');

is($result, $lena_gray_expected, 'Same output as original script.');

done_testing();
