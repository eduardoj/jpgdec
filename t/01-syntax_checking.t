#!/usr/bin/perl -w

use strict;

use Test::More;


my $command = 'perl -cw jpgdec 2>/dev/null';

system($command);

isnt($? >> 8, 255, 'Syntax checking.');

done_testing();
