#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

# Ensure a recent version of Test::Pod
my $min_tp = 1.22;
eval "use Test::Pod $min_tp";
plan skip_all => "Test::Pod $min_tp required for testing POD" if $@;

my @poddirs;
push @poddirs, ( -e 'lib' ? 'lib' : 'blib' );
push @poddirs, 'script';

all_pod_files_ok( all_pod_files( @poddirs ) );

done_testing;