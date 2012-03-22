# Do not edit this file - Generated by Perlito5 8.0
use v5;
use utf8;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito5::Perl5::Runtime;
our $MATCH = Perlito5::Match->new();
package main;
use v5;
package Perlito5::Grammar::String;
use Perlito5::Precedence;
Perlito5::Precedence::add_term((chr(39) => sub {
    Perlito5::Grammar::String->term_single_quote($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('"' => sub {
    Perlito5::Grammar::String->term_double_quote($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('<<' => sub {
    Perlito5::Grammar::String->here_doc_wanted($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('q' => sub {
    Perlito5::Grammar::String->term_q_quote($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('qq' => sub {
    Perlito5::Grammar::String->term_qq_quote($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('qw' => sub {
    Perlito5::Grammar::String->term_qw_quote($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('/' => sub {
    Perlito5::Grammar::String->term_slash_quote($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('m' => sub {
    Perlito5::Grammar::String->term_m_quote($_[0], $_[1])
}));
Perlito5::Precedence::add_term(('s' => sub {
    Perlito5::Grammar::String->term_s_quote($_[0], $_[1])
}));
sub Perlito5::Grammar::String::term_double_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((('"' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->double_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'double_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'double_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::term_single_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((chr(39) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->single_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'single_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'single_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::term_q_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((('q' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('#' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((do {
    ((my  $m2) = Perlito5::Grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m2) = Perlito5::Grammar->word($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))
})));
    ($MATCH = ($res ? 0 : $tmp))
}))) && ((do {
    ((my  $m2) = $grammar->char_any($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'char_any'} = $m2);
        1
    }
    else {
        0
    }
}))))
})))
}))) && ((do {
    ((my  $m2) = $grammar->q_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'q_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'q_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::term_qq_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((('qq' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('#' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((do {
    ((my  $m2) = Perlito5::Grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m2) = Perlito5::Grammar->word($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))
})));
    ($MATCH = ($res ? 0 : $tmp))
}))) && ((do {
    ((my  $m2) = $grammar->char_any($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'char_any'} = $m2);
        1
    }
    else {
        0
    }
}))))
})))
}))) && ((do {
    ((my  $m2) = $grammar->qq_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'qq_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'qq_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::term_qw_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((('qw' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('#' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((do {
    ((my  $m2) = Perlito5::Grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m2) = Perlito5::Grammar->word($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))
})));
    ($MATCH = ($res ? 0 : $tmp))
}))) && ((do {
    ((my  $m2) = $grammar->char_any($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'char_any'} = $m2);
        1
    }
    else {
        0
    }
}))))
})))
}))) && ((do {
    ((my  $m2) = $grammar->qw_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'qw_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'qw_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::term_slash_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((('/' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->m_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'m_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'m_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::term_m_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((('m' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('#' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((do {
    ((my  $m2) = Perlito5::Grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m2) = Perlito5::Grammar->word($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))
})));
    ($MATCH = ($res ? 0 : $tmp))
}))) && ((do {
    ((my  $m2) = $grammar->char_any($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'char_any'} = $m2);
        1
    }
    else {
        0
    }
}))))
})))
}))) && ((do {
    ((my  $m2) = $grammar->m_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'m_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'m_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::term_s_quote {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((('s' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('#' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((do {
    ((my  $m2) = Perlito5::Grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m2) = Perlito5::Grammar->word($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))
})));
    ($MATCH = ($res ? 0 : $tmp))
}))) && ((do {
    ((my  $m2) = $grammar->char_any($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'char_any'} = $m2);
        1
    }
    else {
        0
    }
}))))
})))
}))) && ((do {
    ((my  $m2) = $grammar->s_quote_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'s_quote_parse'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = ['term', $MATCH->{'s_quote_parse'}->flat()]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
((my  %pair) = (('{' => '}'), ('(' => ')'), ('[' => ']'), ('<' => '>')));
sub Perlito5::Grammar::String::q_quote_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $delimiter) = substr($str, ($pos - 1), 1));
    ((my  $open_delimiter) = $delimiter);
    if (exists($pair{$delimiter})) {
        ($delimiter = $pair{$delimiter})
    };
    return ($self->string_interpolation_parse($str, $pos, $open_delimiter, $delimiter, 0))
};
sub Perlito5::Grammar::String::qq_quote_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $delimiter) = substr($str, ($pos - 1), 1));
    ((my  $open_delimiter) = $delimiter);
    if (exists($pair{$delimiter})) {
        ($delimiter = $pair{$delimiter})
    };
    return ($self->string_interpolation_parse($str, $pos, $open_delimiter, $delimiter, 1))
};
sub Perlito5::Grammar::String::qw_quote_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $delimiter) = substr($str, ($pos - 1), 1));
    ((my  $open_delimiter) = $delimiter);
    if (exists($pair{$delimiter})) {
        ($delimiter = $pair{$delimiter})
    };
    ((my  $m) = $self->string_interpolation_parse($str, $pos, $open_delimiter, $delimiter, 0));
    if ($m) {
        ($m->{'capture'} = Perlito5::AST::Apply->new(('code' => 'list:<,>'), ('arguments' => [map(Perlito5::AST::Val::Buf->new(('buf' => $_)), split(' ', $m->flat()->{'buf'}))]), ('namespace' => '')))
    };
    return ($m)
};
sub Perlito5::Grammar::String::m_quote_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $delimiter) = substr($str, ($pos - 1), 1));
    ((my  $open_delimiter) = $delimiter);
    ((my  $closing_delimiter) = $delimiter);
    if (exists($pair{$delimiter})) {
        ($closing_delimiter = $pair{$delimiter})
    };
    ((my  $part1) = $self->string_interpolation_parse($str, $pos, $open_delimiter, $closing_delimiter, 1));
    if ($part1) {

    }
    else {
        return ($part1)
    };
    ((my  $str_regex) = Perlito5::AST::Val::Buf->new(('buf' => substr($str, $pos, (($part1->{'to'} - $pos) - 1)))));
    (my  $m);
    ((my  $p) = $part1->{'to'});
    ((my  $modifiers) = '');
    ($m = Perlito5::Grammar->ident($str, $p));
    if ($m) {
        ($modifiers = $m->flat());
        ($part1->{'to'} = $m->{'to'})
    };
    ($part1->{'capture'} = Perlito5::AST::Apply->new(('code' => 'p5:m'), ('arguments' => [$str_regex, $modifiers]), ('namespace' => '')));
    return ($part1)
};
sub Perlito5::Grammar::String::s_quote_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $delimiter) = substr($str, ($pos - 1), 1));
    ((my  $open_delimiter) = $delimiter);
    ((my  $closing_delimiter) = $delimiter);
    if (exists($pair{$delimiter})) {
        ($closing_delimiter = $pair{$delimiter})
    };
    ((my  $part1) = $self->string_interpolation_parse($str, $pos, $open_delimiter, $closing_delimiter, 1));
    if ($part1) {

    }
    else {
        return ($part1)
    };
    ((my  $str_regex) = Perlito5::AST::Val::Buf->new(('buf' => substr($str, $pos, (($part1->{'to'} - $pos) - 1)))));
    (my  $part2);
    (my  $m);
    ((my  $p) = $part1->{'to'});
    if (exists($pair{$delimiter})) {
        ($m = Perlito5::Grammar->opt_ws($str, $p));
        ($p = $m->{'to'});
        ($delimiter = substr($str, $p, 1));
        ((my  $open_delimiter) = $delimiter);
        ($p)++;
        ($closing_delimiter = $delimiter);
        if (exists($pair{$delimiter})) {
            ($closing_delimiter = $pair{$delimiter})
        };
        ($part2 = $self->string_interpolation_parse($str, $p, $open_delimiter, $closing_delimiter, 1));
        if ($part2) {

        }
        else {
            return ($part2)
        }
    }
    else {
        ($part2 = $self->string_interpolation_parse($str, $p, $open_delimiter, $closing_delimiter, 1));
        if ($part2) {

        }
        else {
            return ($part2)
        }
    };
    ($p = $part2->{'to'});
    ((my  $modifiers) = '');
    ($m = Perlito5::Grammar->ident($str, $p));
    if ($m) {
        ($modifiers = $m->flat());
        ($part2->{'to'} = $m->{'to'})
    };
    ($part2->{'capture'} = Perlito5::AST::Apply->new(('code' => 'p5:s'), ('arguments' => [$str_regex, $part2->flat(), $modifiers]), ('namespace' => '')));
    return ($part2)
};
sub Perlito5::Grammar::String::string_interpolation_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $open_delimiter) = $_[3]);
    ((my  $delimiter) = $_[4]);
    ((my  $interpolate) = $_[5]);
    ((my  $p) = $pos);
    ((my  $balanced) = ($open_delimiter && exists($pair{$open_delimiter})));
    (my  @args);
    ((my  $buf) = '');
    for ( ; (($p < length($str)) && (substr($str, $p, length($delimiter)) ne $delimiter));  ) {
        ((my  $c) = substr($str, $p, 1));
        (my  $m);
        ((my  $more) = '');
        if (($balanced && ($c eq $open_delimiter))) {
            ($buf = ($buf . $c));
            ($p)++;
            ($m = $self->string_interpolation_parse($str, $p, $open_delimiter, $delimiter, $interpolate));
            ($more = $delimiter)
        }
        else {
            ($m = ($interpolate ? Perlito5::Grammar::String->double_quoted_buf($str, $p, $delimiter) : Perlito5::Grammar::String->single_quoted_unescape($str, $p)))
        };
        if ($m) {
            ((my  $obj) = $m->flat());
            if ((ref($obj) eq 'Perlito5::AST::Val::Buf')) {
                ($buf = ($buf . $obj->{'buf'}));
                ($obj = undef())
            };
            if ($obj) {
                if (length($buf)) {
                    push(@args, Perlito5::AST::Val::Buf->new(('buf' => $buf)) );
                    ($buf = '')
                };
                push(@args, $obj )
            };
            ($p = $m->{'to'});
            ($buf = ($buf . $more))
        }
        else {
            ($buf = ($buf . $c));
            ($p)++;
            if ((($c eq chr(10)) || ($c eq chr(13)))) {
                ((my  $m) = $self->here_doc($str, $p));
                ($p = $m->{'to'})
            }
        }
    };
    if (length($buf)) {
        push(@args, Perlito5::AST::Val::Buf->new(('buf' => $buf)) )
    };
    if ((substr($str, $p, length($delimiter)) ne $delimiter)) {
        die(('Can' . chr(39) . 't find string terminator ' . chr(39) . $delimiter . chr(39) . ' anywhere before EOF'))
    };
    ($p = ($p + length($delimiter)));
    (my  $ast);
    if (!(@args)) {
        ($ast = Perlito5::AST::Val::Buf->new(('buf' => '')))
    }
    else {
        if ((@args == 1)) {
            ($ast = $args[0])
        }
        else {
            ($ast = Perlito5::AST::Apply->new(('namespace' => ''), ('code' => 'list:<.>'), ('arguments' => \@args)))
        }
    };
    return (Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $p), ('capture' => $ast)))
};
(my  @Here_doc);
sub Perlito5::Grammar::String::here_doc_wanted {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    (my  $delimiter);
    ((my  $type) = 'double_quote');
    ((my  $p) = $pos);
    if ((substr($str, $p, 2) eq '<<')) {
        ($p = ($p + 2));
        ((my  $quote) = substr($str, $p, 1));
        if ((($quote eq chr(39)) || ($quote eq '"'))) {
            ($p = ($p + 1));
            ((my  $m) = $self->string_interpolation_parse($str, $p, $quote, $quote, 0));
            if ($m) {
                ($p = $m->{'to'});
                ($delimiter = $m->flat()->{'buf'});
                ($type = (($quote eq chr(39)) ? 'single_quote' : 'double_quote'))
            }
        }
        else {
            if (($quote eq chr(92))) {
                ($p = ($p + 1))
            };
            ((my  $m) = Perlito5::Grammar->ident($str, $p));
            if ($m) {
                ($p = $m->{'to'});
                ($delimiter = $m->flat());
                ($type = (($quote eq chr(92)) ? 'single_quote' : 'double_quote'))
            }
            else {
                die('Use of bare << to mean <<"" is deprecated')
            }
        }
    };
    if (!(defined($delimiter))) {
        return (0)
    };
    ((my  $placeholder) = Perlito5::AST::Apply->new(('code' => 'list:<.>'), ('namespace' => ''), ('arguments' => [])));
    ((my  $placeholder2) = Perlito5::AST::Apply->new(('code' => 'list:<.>'), ('namespace' => ''), ('arguments' => [$placeholder])));
    push(@Here_doc, [$type, sub {
    ($placeholder->{'arguments'} = $_[0])
}, $delimiter] );
    return (Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $p), ('capture' => ['term', $placeholder2])))
};
sub Perlito5::Grammar::String::newline {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((((chr(10) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    ((chr(13) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})))) {
        ($MATCH = $m)
    };
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((chr(13) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    ((chr(10) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})))) {
        ($MATCH = $m)
    };
    1
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::here_doc {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    if (!(@Here_doc)) {
        return (Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos), ('capture' => undef())))
    };
    ((my  $p) = $pos);
    ((my  $here) = shift(@Here_doc));
    ((my  $type) = $here->[0]);
    ((my  $delimiter) = $here->[2]);
    if (($type eq 'single_quote')) {
        for ( ; ($p < length($str));  ) {
            if ((substr($str, $p, length($delimiter)) eq $delimiter)) {
                $here->[1]->([Perlito5::AST::Val::Buf->new(('buf' => substr($str, $pos, ($p - $pos))))]);
                ($p = ($p + length($delimiter)));
                ((my  $m) = $self->newline($str, $p));
                if ((($p >= length($str)) || $m)) {
                    if ($m) {
                        ($p = $m->{'to'})
                    };
                    return (Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => ($p - 1)), ('capture' => undef())))
                }
            };
            for ( ; (($p < length($str)) && (((substr($str, $p, 1) ne chr(10)) && (substr($str, $p, 1) ne chr(13)))));  ) {
                ($p)++
            };
            for ( ; (($p < length($str)) && (((substr($str, $p, 1) eq chr(10)) || (substr($str, $p, 1) eq chr(13)))));  ) {
                ($p)++
            }
        }
    }
    else {
        (my  $m);
        if ((substr($str, $p, length($delimiter)) eq $delimiter)) {
            ($p = ($p + length($delimiter)));
            ($m = $self->newline($str, $p));
            if ((($p >= length($str)) || $m)) {
                $here->[1]->([Perlito5::AST::Val::Buf->new(('buf' => ''))]);
                if ($m) {
                    ($p = $m->{'to'})
                };
                return (Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $p), ('capture' => undef())))
            }
        };
        ($m = $self->string_interpolation_parse($str, $pos, '', (chr(10) . $delimiter . chr(10)), 1));
        if ($m) {
            $here->[1]->([$m->flat(), Perlito5::AST::Val::Buf->new(('buf' => chr(10)))]);
            return ($m)
        }
    };
    die(('Can' . chr(39) . 't find string terminator "' . $delimiter . '" anywhere before EOF'))
};
sub Perlito5::Grammar::String::single_quote_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    return ($self->string_interpolation_parse($str, $pos, chr(39), chr(39), 0))
};
sub Perlito5::Grammar::String::double_quote_parse {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    return ($self->string_interpolation_parse($str, $pos, '"', '"', 1))
};
sub Perlito5::Grammar::String::char_any {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (('' ne substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::single_quoted_unescape {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (((((chr(92) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && (((chr(92) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::Val::Buf->new(('buf' => chr(92))));
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((((chr(92) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && (((chr(39) eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::Val::Buf->new(('buf' => chr(39))));
    1
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::String::double_quoted_buf {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $delimiter) = $_[3]);
    if (((((substr($str, $pos, 1) eq '$') || (substr($str, $pos, 1) eq '@'))) && (substr($str, ($pos + 1), length($delimiter)) ne $delimiter))) {
        ((my  $m) = Perlito5::Expression->term_sigil($str, $pos));
        if ($m) {

        }
        else {
            return ($m)
        };
        ((my  $var) = $m->flat()->[1]);
        ((my  $p) = $m->{'to'});
        (my  $m_index);
        if ((substr($str, $p, 1) eq '[')) {
            ($p)++;
            ($m_index = Perlito5::Expression->list_parse($str, $p));
            if ($m_index) {
                ((my  $exp) = $m_index->{'capture'}->{'exp'});
                ($p = $m_index->{'to'});
                if ((($exp ne '*undef*') && (substr($str, $p, 1) eq ']'))) {
                    ($p)++;
                    ($m_index->{'capture'} = Perlito5::AST::Index->new(('obj' => $var), ('index_exp' => $exp)));
                    ($m_index->{'to'} = $p);
                    return ($m_index)
                }
            }
        };
        ($m_index = Perlito5::Expression->term_curly($str, $m->{'to'}));
        if ($m_index) {
            ($m_index->{'capture'} = Perlito5::AST::Lookup->new(('obj' => $var), ('index_exp' => $m_index->flat()->[2]->[0])));
            return ($m_index)
        };
        if ((substr($str, $pos, 1) eq '@')) {
            ($m->{'capture'} = Perlito5::AST::Apply->new(('code' => 'join'), ('arguments' => [Perlito5::AST::Val::Buf->new(('buf' => ' ')), $var]), ('namespace' => '')))
        }
        else {
            ($m->{'capture'} = $var)
        };
        return ($m)
    }
    else {
        if ((substr($str, $pos, 1) eq chr(92))) {
            ((my  $m) = $self->double_quoted_unescape($str, ($pos + 1)));
            ($m->{'capture'} = Perlito5::AST::Val::Buf->new(('buf' => $m->flat())));
            return ($m)
        }
    };
    return (0)
};
sub Perlito5::Grammar::String::double_quoted_unescape {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((((((((do {
    (((('a' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = chr(7));
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('b' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = chr(8));
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = chr(27));
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('f' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = chr(12));
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('n' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = chr(10));
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('r' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = chr(13));
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('t' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = chr(9));
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((do {
    ((my  $m2) = $grammar->char_any($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'char_any'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'char_any'}->flat());
    1
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
1;

1;
