#!/usr/bin/perl -w

use strict;

use Test::More;


my $file_name = 'lena_col444.jpg';

my $command = "perl jpgdec t/data/$file_name";

my $result = `$command`;

isnt($? >> 8, 255, 'Execution without errors.');

done_testing();
