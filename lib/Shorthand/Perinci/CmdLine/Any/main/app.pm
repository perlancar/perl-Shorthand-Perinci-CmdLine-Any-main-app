package Shorthand::Perinci::CmdLine::Any::main::app;

# DATE
# VERSION

use Perinci::CmdLine::Any;

my %extra_args;

sub import {
    my $class = shift;
    %extra_args = @_;
}

INIT {
    Perinci::CmdLine::Any->new(
        url => '/main/app',
        %extra_args,
    )->run;
}
