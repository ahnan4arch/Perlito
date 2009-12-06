package main;

use lib 'lib5';
use strict;

BEGIN {
    $::_V6_COMPILER_NAME    = 'MiniPerl6';
    $::_V6_COMPILER_VERSION = '2.0';
}

use MiniPerl6::Perl5::Runtime;
use MiniPerl6::Perl5::Match;

package Main;
use MiniPerl6::Grammar;
use MiniPerl6::Go::Emitter;
use MiniPerl6::Grammar::Regex;
use MiniPerl6::Emitter::Token;

my $lib_source_filename = 'lib/MiniPerl6/Go/Runtime.go';
my $tmp_go_filename = 'tmp';

my @args = @ARGV;
my ( @switch_e, $source, $source_filename, $backend, $execute );
$execute = 1;

while (@args) {
    if ( $args[0] eq '-e' ) {
        my ($switch, $source) = (shift @args, shift @args);
        push @switch_e, $source;
        redo;
    }
    if ( $args[0] eq '-Cgo' ) {
        my $switch = shift @args;
        $backend = 'go';
        $execute = 0;
        redo;
    }
    last;
}
$source_filename = shift @args if @args;

if (@switch_e) {
    $source = join('; ', @switch_e);
}
elsif ($source_filename) {
    open FILE, $source_filename
      or die "Cannot read $source_filename\n";
    local $/ = undef;
    $source = <FILE>;
    close FILE;
}
else {
    local $/ = undef;
    $source = <>;
}

if ( $execute ) {
    my $out = '>' . $tmp_go_filename . '.go';
    open( OUT, $out )
      or die "Cannot write to $out\n";
    select( OUT );

    open FILE, $lib_source_filename
      or die "Cannot read $lib_source_filename\n";
    local $/ = undef;
    print <FILE>;
    close FILE;
}

my $pos = 0;
my @comp_unit;

say("// Do not edit this file - Generated by MiniPerl6");

while ( $pos < length($source) ) {
    #say( "Source code:", $source );
    my $p = MiniPerl6::Grammar->comp_unit( $source, $pos );
    #say( Main::perl( $$p ) );
    push @comp_unit, $$p;
    #say( $p->to, " -- ", length($source) );
    $pos = $p->to;
}

my %unit_seen;
my @tmp_comp_unit;
for my $comp_unit (@comp_unit) {
    my $name = $comp_unit->{name};
    if ( $unit_seen{$name} ) {
        for my $stmt ( @{ $comp_unit->{body} } ) {
            push @{ $unit_seen{$name}{body} }, $stmt;
        }
    }
    else {
        $unit_seen{$name} = $comp_unit;
        push @tmp_comp_unit, $comp_unit;
    }
}
@comp_unit = @tmp_comp_unit;

for my $comp_unit (@comp_unit) {
    say( $comp_unit->emit_go() );
}

say("// interfaces for all methods");
my %meth_seen;
for my $comp_unit (@comp_unit) {
    for my $stmt ( @{ $comp_unit->{body} } ) {
        if ( $stmt->isa('Method') && !$meth_seen{ $stmt->{name} } ) {
            my $meth = $stmt->{name};
            say(    "type " 
                  . $meth
                  . "_er interface { f_"
                  . $meth
                  . " (Capture) Any }" );
            $meth_seen{$meth} = 1;
        }
    }
}
say();
say("func main () {");
for my $comp_unit (@comp_unit) {
    say( "  Init_" . Main::to_go_namespace( $comp_unit->{name} ) . "();" );
}
for my $comp_unit (@comp_unit) {
    say( "  Run_" . Main::to_go_namespace( $comp_unit->{name} ) . "();" );
}
say("}");


if ( $execute ) {
    close(OUT);
    select(STDOUT);
    unlink $tmp_go_filename . '.6';
    unlink '6.out'; 
    `6g $tmp_go_filename.go`; 
    `6l $tmp_go_filename.6`;
    exec "./6.out"
        or die "can't execute";
}
