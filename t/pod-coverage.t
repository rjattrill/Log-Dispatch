use strict;
use warnings;

use Test::More;


plan skip_all => 'This test is only run for the module author'
    unless -d '.svn' || -d '.hg' || $ENV{IS_MAINTAINER};

eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage"
    if $@;

all_pod_coverage_ok( { trustme => [ qr/^(?:err|crit|emerg)$/,
                                    qr/^send_email|log_message|new$/,
                                    qr/^(?:O_)?APPEND$/,
                                  ] } );

