package MyApp;
use strict;
use warnings;
use File::Spec;
use lib File::Spec->catfile($FindBin::Bin, qw/.. .. lib/);
use Nephia plugins => ['PocketIO'];

our $VERSION = 0.01;

pocketio_assets;

path '/' => sub {
    my $req = shift;
    return {
        template => 'index.html',
        title    => config->{appname},
        envname  => config->{envname},
        apppath  => 'lib/' . __PACKAGE__ .'.pm',
    };
};

path '/data' => sub {
    my $req = shift;
    return { # return JSON unless {template}
        #template => 'index.tx',
        title    => config->{appname},
        envname  => config->{envname},
    };
};

1;

=head1 NAME

MyApp - Web Application

=head1 SYNOPSIS

  $ plackup

=head1 DESCRIPTION

MyApp is web application based Nephia.

=head1 AUTHOR

clever guy

=head1 SEE ALSO

Nephia

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

