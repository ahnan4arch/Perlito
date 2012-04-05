# Do not edit this file - Generated by Perlito5 8.0
use v5;
use Perlito5::Perl5::Runtime;
our $MATCH = Perlito5::Match->new();
package main;
package Perlito5::Grammar;
use Perlito5::Expression;
use Perlito5::Grammar::Control;
use Perlito5::Grammar::String;
use Perlito5::Grammar::Use;
use Perlito5::Grammar::Block;
use Perlito5::Grammar::Space;
sub Perlito5::Grammar::word {
    ((substr($_[1], $_[2], 1) =~ m!\w!) ? bless({('str' => $_[1]), ('from' => $_[2]), ('to' => ($_[2] + 1))}, 'Perlito5::Match') : 0)
};
sub Perlito5::Grammar::digit {
    ((substr($_[1], $_[2], 1) =~ m!\d!) ? bless({('str' => $_[1]), ('from' => $_[2]), ('to' => ($_[2] + 1))}, 'Perlito5::Match') : 0)
};
sub Perlito5::Grammar::ident {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
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
})) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->word($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::full_ident {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $m2) = $grammar->ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    for ( ; (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((('::' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))
}))
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'})
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::namespace_before_ident {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((do {
    ((my  $m2) = $grammar->ident($str, $MATCH->{'to'}));
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
    (('::' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))
}))
})));
    ($MATCH = ($res ? $tmp : 0))
}))) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    for ( ; (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((('::' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (('::' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))
}))
})));
    ($MATCH = ($res ? $tmp : 0))
})))
}))
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'})
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::optional_namespace_before_ident {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((((do {
    ((((do {
    ((my  $m2) = $grammar->namespace_before_ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'namespace_before_ident'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    for ( ; (((('::' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'})
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    1
}))) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'namespace_before_ident'}->flat());
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('::' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))) && ((do {
    ($MATCH->{'capture'} = 'main');
    1
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((1 && ((do {
    ($MATCH->{'capture'} = '');
    1
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::space {
    goto(&Perlito5::Grammar::Space::space)
};
sub Perlito5::Grammar::ws {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m2) = Perlito5::Grammar::Space->ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::opt_ws {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    ((my  $m2) = $grammar->ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))) {
        ($MATCH = $m)
    };
    1
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::opt_ws2 {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    ((my  $m2) = $grammar->ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))) {
        ($MATCH = $m)
    };
    1
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::opt_ws3 {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    ((my  $m2) = $grammar->ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))) {
        ($MATCH = $m)
    };
    1
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::exp_stmts2 {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $m2) = $grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'exp_stmts'}->flat());
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::exp {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $m2) = Perlito5::Expression->exp_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.exp_parse'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'Perlito5::Expression.exp_parse'}->flat());
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::exp2 {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $m2) = Perlito5::Expression->exp_parse($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Expression.exp_parse'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'Perlito5::Expression.exp_parse'}->flat());
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::opt_ident {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (((do {
    ((my  $m2) = $grammar->ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'ident'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'ident'}->flat());
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((1 && ((do {
    ($MATCH->{'capture'} = 'postcircumfix:<( )>');
    1
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::opt_type {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    (('::' eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))
})))) {
        ($MATCH = $m)
    };
    1
})) && ((do {
    ((my  $m2) = $grammar->full_ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'full_ident'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'full_ident'}->flat());
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((1 && ((do {
    ($MATCH->{'capture'} = '');
    1
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::var_sigil {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((((((do {
    (('$' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('%' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('@' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('&' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('*' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::var_name {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((my  $m2) = $grammar->full_ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'full_ident'} = $m2);
        1
    }
    else {
        0
    }
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'digit'} = $m2);
        1
    }
    else {
        0
    }
})))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::var_ident {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((do {
    ((my  $m2) = $grammar->var_sigil($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'var_sigil'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $m2) = $grammar->optional_namespace_before_ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'optional_namespace_before_ident'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->var_name($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'var_name'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::Var->new(('sigil' => $MATCH->{'var_sigil'}->flat()), ('namespace' => $MATCH->{'optional_namespace_before_ident'}->flat()), ('name' => $MATCH->{'var_name'}->flat())));
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::exponent {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('e' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('E' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
})) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((((do {
    (('+' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('-' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (1)
})))
}))) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::val_num {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((((do {
    ((((('.' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
}))) && ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    ((my  $m2) = $grammar->exponent($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))) {
        ($MATCH = $m)
    };
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('.' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = $grammar->exponent($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
})) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((my  $m2) = $grammar->exponent($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((((('.' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $tmp) = $MATCH);
    ($MATCH = Perlito5::Match->new(('str' => $str), ('from' => $tmp->{'to'}), ('to' => $tmp->{'to'})));
    ((my  $res) = ((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (('.' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
}))
})));
    ($MATCH = ($res ? 0 : $tmp))
}))) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    for ( ; (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'})
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    1
}))) && ((do {
    ((my  $m) = $MATCH);
    if (!(((do {
    ((my  $m2) = $grammar->exponent($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})))) {
        ($MATCH = $m)
    };
    1
}))))
})))
}))))
})))
})) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::Val::Num->new(('num' => $MATCH->flat())));
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::digits {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::val_int {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((((do {
    ((((('0' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('x' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('X' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
}))) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->word($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((((('0' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('b' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('B' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
}))) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('0' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('1' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
}))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((('0' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
}))))
})))
})) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::Val::Int->new(('int' => oct($MATCH->flat()))));
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    ((my  $count) = 0);
    for ( ; (((do {
    ((my  $m2) = $grammar->digit($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'});
        ($count = ($count + 1))
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    ($count > 0)
})) && ((do {
    ($MATCH->{'capture'} = Perlito5::AST::Val::Int->new(('int' => $MATCH->flat())));
    1
}))))
})))
}))));
    ($tmp ? $MATCH : 0)
};
(my  @PKG);
sub Perlito5::Grammar::exp_stmts {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((((do {
    push(@PKG, $Perlito5::PKG_NAME );
    1
})) && ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    for ( ; (((do {
    ((my  $m2) = Perlito5::Expression->delimited_statement($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        if (exists($MATCH->{'Perlito5::Expression.delimited_statement'})) {
            push(@{$MATCH->{'Perlito5::Expression.delimited_statement'}}, $m2 )
        }
        else {
            ($MATCH->{'Perlito5::Expression.delimited_statement'} = [$m2])
        };
        1
    }
    else {
        0
    }
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'})
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    1
}))) && ((do {
    ($Perlito5::PKG_NAME = pop(@PKG));
    ($MATCH->{'capture'} = [map($_->capture(), @{$MATCH->{'Perlito5::Expression.delimited_statement'}})]);
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::args_sig {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    ((my  $last_match_null) = 0);
    ((my  $m) = $MATCH);
    ((my  $to) = $MATCH->{'to'});
    for ( ; (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((((((((((do {
    ((';' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((chr(92) eq substr($str, $MATCH->{'to'}, 2)) && (($MATCH->{'to'} = (2 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('[' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    ((((']' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('*' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('+' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('@' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('%' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('$' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
}))) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((('&' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))))
})))
})) && (($last_match_null < 2)));  ) {
        if (($to == $MATCH->{'to'})) {
            ($last_match_null = ($last_match_null + 1))
        }
        else {
            ($last_match_null = 0)
        };
        ($m = $MATCH);
        ($to = $MATCH->{'to'})
    };
    ($MATCH = $m);
    ($MATCH->{'to'} = $to);
    1
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::prototype {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    ((((((((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
})) && ((('(' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->args_sig($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'args_sig'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && (((')' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ($MATCH->{'capture'} = ('' . $MATCH->{'args_sig'}->flat()));
    1
})))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((do {
    ($MATCH->{'capture'} = '*undef*');
    1
})))
})))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::anon_sub_def {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((((((do {
    ((my  $m2) = $grammar->prototype($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'prototype'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('{' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('}' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((do {
    die('Syntax Error in anon sub');
    1
})))
})))
}))) && ((do {
    ((my  $sig) = $MATCH->{'prototype'}->flat());
    if (($sig eq '*undef*')) {
        ($sig = undef())
    };
    ($MATCH->{'capture'} = Perlito5::AST::Sub->new(('name' => undef()), ('namespace' => undef()), ('sig' => $sig), ('block' => $MATCH->{'exp_stmts'}->flat())));
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::named_sub_def {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((((((((do {
    ((my  $m2) = $grammar->optional_namespace_before_ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'optional_namespace_before_ident'} = $m2);
        1
    }
    else {
        0
    }
})) && ((do {
    ((my  $m2) = $grammar->ident($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'ident'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->prototype($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'prototype'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((('{' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'})))))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->exp_stmts($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'exp_stmts'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = $grammar->opt_ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $pos1) = $MATCH->{'to'});
    (((do {
    (('}' eq substr($str, $MATCH->{'to'}, 1)) && (($MATCH->{'to'} = (1 + $MATCH->{'to'}))))
})) || ((do {
    ($MATCH->{'to'} = $pos1);
    (((do {
    die('Syntax Error in sub ' . chr(39), $MATCH->{'ident'}->flat(), chr(39));
    1
})))
})))
}))) && ((do {
    ((my  $name) = $MATCH->{'ident'}->flat());
    ((my  $sig) = $MATCH->{'prototype'}->flat());
    if (($sig eq '*undef*')) {
        ($sig = undef())
    };
    ((my  $namespace) = $MATCH->{'optional_namespace_before_ident'}->flat());
    if ($name) {
        if ($namespace) {

        }
        else {
            ($namespace = $Perlito5::PKG_NAME)
        };
        ((my  $full_name) = ($namespace . '::' . $name));
        if (exists($Perlito5::PROTO->{$full_name})) {
            warn(('Subroutine ' . $full_name . ' redefined'))
        };
        ($Perlito5::PROTO->{$full_name} = $sig)
    };
    ($MATCH->{'capture'} = Perlito5::AST::Sub->new(('name' => $name), ('namespace' => $namespace), ('sig' => $sig), ('block' => $MATCH->{'exp_stmts'}->flat())));
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};
sub Perlito5::Grammar::named_sub {
    ((my  $grammar) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $MATCH) = Perlito5::Match->new(('str' => $str), ('from' => $pos), ('to' => $pos)));
    ((my  $tmp) = (((do {
    ((my  $pos1) = $MATCH->{'to'});
    ((do {
    (((((('sub' eq substr($str, $MATCH->{'to'}, 3)) && (($MATCH->{'to'} = (3 + $MATCH->{'to'}))))) && ((do {
    ((my  $m2) = Perlito5::Grammar->ws($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        1
    }
    else {
        0
    }
}))) && ((do {
    ((my  $m2) = Perlito5::Grammar->named_sub_def($str, $MATCH->{'to'}));
    if ($m2) {
        ($MATCH->{'to'} = $m2->{'to'});
        ($MATCH->{'Perlito5::Grammar.named_sub_def'} = $m2);
        1
    }
    else {
        0
    }
}))) && ((do {
    ($MATCH->{'capture'} = $MATCH->{'Perlito5::Grammar.named_sub_def'}->flat());
    1
})))
}))
}))));
    ($tmp ? $MATCH : 0)
};

1;
