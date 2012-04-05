package Perlito5::Grammar::Space;

use Perlito5::Precedence;

Perlito5::Precedence::add_term( '#'     => sub { Perlito5::Grammar::Space->term_space($_[0], $_[1]) } );
Perlito5::Precedence::add_term( chr(9)  => sub { Perlito5::Grammar::Space->term_space($_[0], $_[1]) } );
Perlito5::Precedence::add_term( chr(10) => sub { Perlito5::Grammar::Space->term_space($_[0], $_[1]) } );
Perlito5::Precedence::add_term( chr(12) => sub { Perlito5::Grammar::Space->term_space($_[0], $_[1]) } );
Perlito5::Precedence::add_term( chr(13) => sub { Perlito5::Grammar::Space->term_space($_[0], $_[1]) } );
Perlito5::Precedence::add_term( chr(32) => sub { Perlito5::Grammar::Space->term_space($_[0], $_[1]) } );

token term_space {
    <.ws>           { $MATCH->{"capture"} = [ 'space',   ' ' ] }
};

sub space {
    substr( $_[1], $_[2], 1 ) =~ m/\s/
    ? bless {
        str  => $_[1],
        from => $_[2],
        to   => $_[2] + 1,
      },
      'Perlito5::Match'
    : 0;
}

token not_newline {
    <!before [ \c10 | \c13 ]> .
};

token pod_pod_begin {
    |   [ \c10 | \c13 ] '=cut' \N*
    |   . \N* <.pod_pod_begin>
};

token pod_begin {
    |   [ \c10 | \c13 ] '=end' \N*
    |   . \N* <.pod_begin>
};

token ws {
    [
    |   '#' \N*
    |
        [ \c10 \c13?
        | \c13 \c10?
        ]

        <.Perlito5::Grammar::String.here_doc>

        [
        |  '='  [
                |  'pod'    <.pod_pod_begin>
                |  'head1'  <.pod_pod_begin>
                |  'begin'  <.pod_begin>
                |  'for'    <.pod_begin>  # TODO - fixme: recognize a single paragraph (double-newline)
                ]
        |  ''
        ]
    |   \s
    ]+
};

token opt_ws  {  <.ws>?  };
token opt_ws2 {  <.ws>?  };
token opt_ws3 {  <.ws>?  };

1;

=begin

=head1 NAME

Perlito5::Grammar::Space - Grammar for Perlito5 "whitespace"

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 AUTHOR

Flavio Soibelmann Glock <fglock@gmail.com>.

=head1 SEE ALSO

=head1 COPYRIGHT

Copyright 2012 by Flavio Soibelmann Glock.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=end

