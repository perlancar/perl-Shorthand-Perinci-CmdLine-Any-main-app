package Shorthand::Perinci::CmdLine::Any::main::app;

# DATE
# VERSION

use strict;
use warnings;

use Perinci::CmdLine::Any;

my %extra_args;

sub import {
    my $class = shift;
    %extra_args = @_;
}

END {
    no warnings 'once';
    if ($main::SPEC{app}) {
        Perinci::CmdLine::Any->new(
            url => '/main/app',
            %extra_args,
        )->run;
    }
}

1;
# ABSTRACT: Load Perinci::CmdLine::Any and run main's app

=head1 SYNOPSIS

 use Shorthand::Perinci::CmdLine::Any::main::app;

=head1 DESCRIPTION

B<EXPERIMENTAL.>

 use Shorthand::Perinci::CmdLine::Any::main::app;

is a shorthand for:

 use Perinci::CmdLine::Any;
 END { Perinci::CmdLine::Any->new(url => '/main/app')->run; }

You can pass extra arguments to new() via import arguments, e.g.:

 use Shorthand::Perinci::CmdLine::Any::main::app log=>1;

is a shorthand for:

 use Perinci::CmdLine::Any;
 END { Perinci::CmdLine::Any->new(url => '/main/app', log=>1)->run; }
