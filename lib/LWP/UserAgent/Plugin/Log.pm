package LWP::UserAgent::Plugin::Log;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::ger;

sub before_request {
    my ($self, $r) = @_;

    my ($ua, $request, $arg, $size, $previous) = @{ $r->{argv} };
    log_trace "%s %s", $request->method, $request->uri;

    1; # ok
}

sub after_request {
    my ($self, $r) = @_;

    my ($ua, $request, $arg, $size, $previous) = @{ $r->{argv} };
    my $url = $request->uri;

    1; # ok
}

1;
# ABSTRACT: Log LWP::UserAgent request/response

=for Pod::Coverage .+

=head1 SYNOPSIS

 use LWP::UserAgent::Plugin 'Log' => {
     ...
 };


=head1 DESCRIPTION

This plugin logs HTTP request/response using L<Log::ger>.


=head1 CONFIGURATION

=head2


=head1 ENVIRONMENT


=head1 SEE ALSO

Existing (non-plugin-based) solutions: L<Log::ger::For::LWP>.
