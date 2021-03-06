#!/usr/bin/perl -w

use strict;

use Test::More;


open FILE, "t/data/lena_gray.pgm" or die "Couldn't open file: $!";
my $lena_expected = join("", <FILE>);
close FILE;

my $file_name = 'lena_gray.jpg';

my $command = "perl jpgdec t/data/$file_name";

my $result = `$command`;


isnt($? >> 8, 255, 'Execution without errors.');

is($result, $lena_expected, 'Same output as original script.');


done_testing();
