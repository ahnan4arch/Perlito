# Do not edit this file - Generated by Perlito5 8.0
use v5;
use utf8;
use strict;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito5::Perl5::Runtime;
our $MATCH = Perlito5::Match->new();
package main;
use v5;
package Perlito5::Javascript::Runtime;
sub emit_javascript {
    return (chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' lib' . chr(47) . 'Perlito5' . chr(47) . 'Javascript' . chr(47) . 'Runtime.js' . chr(10) . chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' Runtime for ' . chr(34) . 'Perlito' . chr(34) . ' Perl5-in-Javascript' . chr(10) . chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' AUTHORS' . chr(10) . chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' Flavio Soibelmann Glock  fglock' . chr(64) . 'gmail.com' . chr(10) . chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' COPYRIGHT' . chr(10) . chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' Copyright 2009, 2010, 2011, 2012 by Flavio Soibelmann Glock and others.' . chr(10) . chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' This program is free software' . chr(59) . ' you can redistribute it and' . chr(47) . 'or modify it' . chr(10) . chr(47) . chr(47) . ' under the same terms as Perl itself.' . chr(10) . chr(47) . chr(47) . chr(10) . chr(47) . chr(47) . ' See http:' . chr(47) . chr(47) . 'www.perl.com' . chr(47) . 'perl' . chr(47) . 'misc' . chr(47) . 'Artistic.html' . chr(10) . chr(10) . 'if (typeof NAMESPACE ' . chr(33) . chr(61) . chr(61) . ' ' . chr(34) . 'object' . chr(34) . ') ' . chr(123) . chr(10) . '    NAMESPACE ' . chr(61) . ' ' . chr(123) . chr(125) . chr(59) . chr(10) . '    CLASS ' . chr(61) . ' ' . chr(123) . chr(125) . chr(59) . chr(10) . '    LOCAL ' . chr(61) . ' []' . chr(59) . chr(10) . chr(10) . '    var universal ' . chr(61) . ' function () ' . chr(123) . chr(125) . chr(59) . chr(10) . '    CLASS.UNIVERSAL ' . chr(61) . ' new universal()' . chr(59) . chr(10) . '    CLASS.UNIVERSAL._ref_ ' . chr(61) . ' ' . chr(34) . 'UNIVERSAL' . chr(34) . chr(59) . chr(10) . '    CLASS.UNIVERSAL.isa ' . chr(61) . ' function (List__) ' . chr(123) . chr(10) . '        return List__[0]._class_._ref_ ' . chr(61) . chr(61) . ' List__[1]' . chr(10) . '    ' . chr(125) . chr(59) . chr(10) . '    CLASS.UNIVERSAL.can ' . chr(61) . ' function (List__) ' . chr(123) . chr(10) . '        var o ' . chr(61) . ' List__[0]' . chr(59) . chr(10) . '        var s ' . chr(61) . ' List__[1]' . chr(59) . chr(10) . '        if ( s.indexOf(' . chr(34) . '::' . chr(34) . ') ' . chr(61) . chr(61) . ' -1 ) ' . chr(123) . chr(10) . '            return o._class_[s]' . chr(10) . '        ' . chr(125) . chr(10) . '        var c ' . chr(61) . ' s.split(' . chr(34) . '::' . chr(34) . ')' . chr(59) . chr(10) . '        s ' . chr(61) . ' c.pop()' . chr(59) . ' ' . chr(10) . '        return CLASS[c.join(' . chr(34) . '::' . chr(34) . ')][s]' . chr(10) . '    ' . chr(125) . chr(59) . chr(10) . '    CLASS.UNIVERSAL.DOES ' . chr(61) . ' CLASS.UNIVERSAL.can' . chr(59) . chr(10) . chr(10) . '    NAMESPACE.UNIVERSAL ' . chr(61) . ' new universal()' . chr(59) . chr(10) . chr(10) . '    var core ' . chr(61) . ' function () ' . chr(123) . chr(125) . chr(59) . chr(10) . '    CLASS.CORE ' . chr(61) . ' new core()' . chr(59) . chr(10) . '    CLASS.CORE._ref_ ' . chr(61) . ' ' . chr(34) . 'CORE' . chr(34) . chr(59) . chr(10) . chr(10) . '    NAMESPACE.CORE ' . chr(61) . ' new core()' . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'function make_package(pkg_name) ' . chr(123) . chr(10) . '    if (' . chr(33) . 'CLASS.hasOwnProperty(pkg_name)) ' . chr(123) . chr(10) . '        var tmp ' . chr(61) . ' function () ' . chr(123) . chr(125) . chr(59) . chr(10) . '        tmp.prototype ' . chr(61) . ' CLASS.UNIVERSAL' . chr(59) . chr(10) . '        CLASS[pkg_name] ' . chr(61) . ' new tmp()' . chr(59) . chr(10) . '        CLASS[pkg_name]._ref_ ' . chr(61) . ' pkg_name' . chr(59) . chr(10) . '        CLASS[pkg_name]._class_ ' . chr(61) . ' CLASS[pkg_name]' . chr(59) . '  ' . chr(47) . chr(47) . ' XXX memory leak' . chr(10) . chr(10) . '        var tmp ' . chr(61) . ' function () ' . chr(123) . chr(125) . chr(59) . chr(10) . '        tmp.prototype ' . chr(61) . ' NAMESPACE.CORE' . chr(59) . chr(10) . '        NAMESPACE[pkg_name] ' . chr(61) . ' new tmp()' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . chr(125) . chr(10) . chr(10) . 'make_package(' . chr(34) . 'main' . chr(34) . ')' . chr(59) . chr(10) . chr(10) . 'function make_sub(pkg_name, sub_name, func) ' . chr(123) . chr(10) . '    NAMESPACE[pkg_name][sub_name] ' . chr(61) . ' CLASS[pkg_name][sub_name] ' . chr(61) . ' func' . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'function set_local(namespace, name, sigil) ' . chr(123) . chr(10) . '    var v ' . chr(61) . ' name' . chr(59) . chr(10) . '    if (sigil ' . chr(61) . chr(61) . ' ' . chr(34) . chr(36) . chr(34) . ') ' . chr(123) . chr(10) . '        v ' . chr(61) . ' ' . chr(34) . 'v_' . chr(34) . '+name' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    LOCAL.push([namespace, v, namespace[v]])' . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'function cleanup_local(idx, value) ' . chr(123) . chr(10) . '    while (LOCAL.length > idx) ' . chr(123) . chr(10) . '        l ' . chr(61) . ' LOCAL.pop()' . chr(59) . chr(10) . '        l[0][l[1]] ' . chr(61) . ' l[2]' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return value' . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'if (typeof arguments ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'object' . chr(34) . ') ' . chr(123) . chr(10) . '    List_ARGV ' . chr(61) . ' arguments' . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'function HashRef(o) ' . chr(123) . chr(10) . '    this._hash_ ' . chr(61) . ' o' . chr(59) . chr(10) . '    this._ref_ ' . chr(61) . ' ' . chr(34) . 'HASH' . chr(34) . chr(59) . chr(10) . '    this.bool ' . chr(61) . ' function() ' . chr(123) . ' return 1 ' . chr(125) . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'function ArrayRef(o) ' . chr(123) . chr(10) . '    this._array_ ' . chr(61) . ' o' . chr(59) . chr(10) . '    this._ref_ ' . chr(61) . ' ' . chr(34) . 'ARRAY' . chr(34) . chr(59) . chr(10) . '    this.bool ' . chr(61) . ' function() ' . chr(123) . ' return 1 ' . chr(125) . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'function ScalarRef(o) ' . chr(123) . chr(10) . '    this._scalar_ ' . chr(61) . ' o' . chr(59) . chr(10) . '    this._ref_ ' . chr(61) . ' ' . chr(34) . 'SCALAR' . chr(34) . chr(59) . chr(10) . '    this.bool ' . chr(61) . ' function() ' . chr(123) . ' return 1 ' . chr(125) . chr(59) . chr(10) . chr(125) . chr(10) . chr(10) . 'make_package(' . chr(34) . 'Perlito5::IO' . chr(34) . ')' . chr(59) . chr(10) . 'make_package(' . chr(34) . 'Perlito5::Runtime' . chr(34) . ')' . chr(59) . chr(10) . 'make_package(' . chr(34) . 'Perlito5::Grammar' . chr(34) . ')' . chr(59) . chr(10) . chr(10) . 'make_sub(' . chr(34) . 'Perlito5::IO' . chr(34) . ', ' . chr(34) . 'slurp' . chr(34) . ', function(List__) ' . chr(123) . chr(10) . '    var filename ' . chr(61) . ' List__[0]' . chr(59) . chr(10) . '    if (typeof readFile ' . chr(61) . chr(61) . ' ' . chr(34) . 'function' . chr(34) . ') ' . chr(123) . chr(10) . '        return readFile(filename)' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof read ' . chr(61) . chr(61) . ' ' . chr(34) . 'function' . chr(34) . ') ' . chr(123) . chr(10) . '        ' . chr(47) . chr(47) . ' v8' . chr(10) . '        return read(filename)' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    CLASS.CORE.die([' . chr(34) . 'Perlito5::IO::slurp() not implemented' . chr(34) . '])' . chr(59) . chr(10) . chr(125) . ')' . chr(59) . chr(10) . chr(10) . 'interpolate_array ' . chr(61) . ' function() ' . chr(123) . chr(10) . '    var res ' . chr(61) . ' []' . chr(59) . chr(10) . '    for (i ' . chr(61) . ' 0' . chr(59) . ' i < arguments.length' . chr(59) . ' i++) ' . chr(123) . chr(10) . '        var o ' . chr(61) . ' arguments[i]' . chr(59) . chr(10) . '        if  (  o ' . chr(61) . chr(61) . ' null' . chr(10) . '            ' . chr(124) . chr(124) . ' o._class_    ' . chr(47) . chr(47) . ' perl5 blessed reference' . chr(10) . '            ' . chr(124) . chr(124) . ' o._ref_      ' . chr(47) . chr(47) . ' perl5 un-blessed reference' . chr(10) . '            )' . chr(10) . '        ' . chr(123) . chr(10) . '            res.push(o)' . chr(59) . chr(10) . '        ' . chr(125) . chr(10) . '        else if (o instanceof Array) ' . chr(123) . chr(10) . '            ' . chr(47) . chr(47) . ' perl5 array' . chr(10) . '            for (j ' . chr(61) . ' 0' . chr(59) . ' j < o.length' . chr(59) . ' j++) ' . chr(123) . chr(10) . '                res.push(o[j])' . chr(59) . chr(10) . '            ' . chr(125) . chr(10) . '        ' . chr(125) . chr(10) . '        else if (typeof o ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'object' . chr(34) . ') ' . chr(123) . chr(10) . '            ' . chr(47) . chr(47) . ' perl5 hash' . chr(10) . '            for(var j in o) ' . chr(123) . chr(10) . '                if (o.hasOwnProperty(j)) ' . chr(123) . chr(10) . '                    res.push(j)' . chr(59) . chr(10) . '                    res.push(o[j])' . chr(59) . chr(10) . '                ' . chr(125) . chr(10) . '            ' . chr(125) . chr(10) . '        ' . chr(125) . chr(10) . '        else ' . chr(123) . chr(10) . '            ' . chr(47) . chr(47) . ' non-ref' . chr(10) . '            res.push(o)' . chr(59) . chr(10) . '        ' . chr(125) . chr(10) . '    ' . chr(125) . chr(10) . '    return res' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'array_to_hash ' . chr(61) . ' function(a) ' . chr(123) . chr(10) . '    var res ' . chr(61) . ' ' . chr(123) . chr(125) . chr(59) . chr(10) . '    for (i ' . chr(61) . ' 0' . chr(59) . ' i < a.length' . chr(59) . ' i+' . chr(61) . '2) ' . chr(123) . chr(10) . '        res[string(a[i])] ' . chr(61) . ' a[i+1]' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return res' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'string ' . chr(61) . ' function(o) ' . chr(123) . chr(10) . '    if (o ' . chr(61) . chr(61) . ' null) ' . chr(123) . chr(10) . '        return ' . chr(34) . chr(34) . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'object' . chr(34) . ' ' . chr(38) . chr(38) . ' (o instanceof Array)) ' . chr(123) . chr(10) . '        var out ' . chr(61) . ' []' . chr(59) . chr(10) . '        for (var i ' . chr(61) . ' 0' . chr(59) . ' i < o.length' . chr(59) . ' i++) ' . chr(123) . chr(10) . '            out.push(string(o[i]))' . chr(59) . chr(10) . '        ' . chr(125) . chr(10) . '        return out.join(' . chr(34) . ' ' . chr(34) . ')' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o.string ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'function' . chr(34) . ') ' . chr(123) . chr(10) . '        return o.string()' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o ' . chr(33) . chr(61) . chr(61) . ' ' . chr(34) . 'string' . chr(34) . ') ' . chr(123) . chr(10) . '        return ' . chr(34) . chr(34) . ' + o' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return o' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'num ' . chr(61) . ' function(o) ' . chr(123) . chr(10) . '    if (o ' . chr(61) . chr(61) . ' null) ' . chr(123) . chr(10) . '        return 0' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'object' . chr(34) . ' ' . chr(38) . chr(38) . ' (o instanceof Array)) ' . chr(123) . chr(10) . '        return o.length' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o.num ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'function' . chr(34) . ') ' . chr(123) . chr(10) . '        return o.num()' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o ' . chr(33) . chr(61) . chr(61) . ' ' . chr(34) . 'number' . chr(34) . ') ' . chr(123) . chr(10) . '        return parseFloat(string(o))' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return o' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'add ' . chr(61) . ' function(o1, o2) ' . chr(123) . chr(10) . '    return num(o1) + num(o2)' . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'bool ' . chr(61) . ' function(o) ' . chr(123) . chr(10) . '    if (o ' . chr(61) . chr(61) . ' null) ' . chr(123) . chr(10) . '        return o' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'boolean' . chr(34) . ') ' . chr(123) . chr(10) . '        return o' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'number' . chr(34) . ') ' . chr(123) . chr(10) . '        return o' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'string' . chr(34) . ') ' . chr(123) . chr(10) . '        return o ' . chr(33) . chr(61) . ' ' . chr(34) . chr(34) . ' ' . chr(38) . chr(38) . ' o ' . chr(33) . chr(61) . ' ' . chr(34) . '0' . chr(34) . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o.bool ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'function' . chr(34) . ') ' . chr(123) . chr(10) . '        return o.bool()' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    if (typeof o.length ' . chr(61) . chr(61) . chr(61) . ' ' . chr(34) . 'number' . chr(34) . ') ' . chr(123) . chr(10) . '        return o.length' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    for (var i in o) ' . chr(123) . chr(10) . '        return true' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return false' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'and ' . chr(61) . ' function(a, fb) ' . chr(123) . chr(10) . '    if (bool(a)) ' . chr(123) . chr(10) . '        return fb()' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return a' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'or ' . chr(61) . ' function(a, fb) ' . chr(123) . chr(10) . '    if (bool(a)) ' . chr(123) . chr(10) . '        return a' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return fb()' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'defined_or ' . chr(61) . ' function(a, fb) ' . chr(123) . chr(10) . '    if (a ' . chr(61) . chr(61) . ' null) ' . chr(123) . chr(10) . '        return fb()' . chr(59) . chr(10) . '    ' . chr(125) . chr(10) . '    return a' . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'str_replicate ' . chr(61) . ' function(o, n) ' . chr(123) . chr(10) . '    n ' . chr(61) . ' num(n)' . chr(59) . chr(10) . '    return n ' . chr(63) . ' Array(n + 1).join(o) : ' . chr(34) . chr(34) . chr(59) . chr(10) . chr(125) . chr(59) . chr(10) . chr(10) . 'make_sub(' . chr(34) . 'Perlito5::Grammar' . chr(34) . ', ' . chr(34) . 'word' . chr(34) . ', function(List__) ' . chr(123) . chr(10) . '    var v_grammar ' . chr(61) . ' List__[0]' . chr(59) . chr(10) . '    var v_str     ' . chr(61) . ' List__[1]' . chr(59) . chr(10) . '    var v_pos     ' . chr(61) . ' List__[2]' . chr(59) . chr(10) . '    return NAMESPACE.CORE.bless([' . chr(10) . '        new HashRef(' . chr(123) . chr(10) . '            str: v_str,' . chr(10) . '            from: v_pos,' . chr(10) . '            to: v_pos + 1,' . chr(10) . '            bool: v_str.substr(v_pos, 1).match(' . chr(47) . chr(92) . 'w' . chr(47) . ') ' . chr(33) . chr(61) . ' null,' . chr(10) . '        ' . chr(125) . '),' . chr(10) . '        CLASS[' . chr(34) . 'Perlito5::Match' . chr(34) . ']' . chr(10) . '    ])' . chr(59) . chr(10) . chr(125) . ')' . chr(59) . chr(10) . chr(10) . 'make_sub(' . chr(34) . 'Perlito5::Grammar' . chr(34) . ', ' . chr(34) . 'digit' . chr(34) . ', function(List__) ' . chr(123) . chr(10) . '    var v_grammar ' . chr(61) . ' List__[0]' . chr(59) . chr(10) . '    var v_str     ' . chr(61) . ' List__[1]' . chr(59) . chr(10) . '    var v_pos     ' . chr(61) . ' List__[2]' . chr(59) . chr(10) . '    return NAMESPACE.CORE.bless([' . chr(10) . '        new HashRef(' . chr(123) . chr(10) . '            str:  v_str,' . chr(10) . '            from: v_pos,' . chr(10) . '            to:   v_pos + 1,' . chr(10) . '            bool: v_str.substr(v_pos, 1).match(' . chr(47) . chr(92) . 'd' . chr(47) . ') ' . chr(33) . chr(61) . ' null,' . chr(10) . '        ' . chr(125) . '),' . chr(10) . '        CLASS[' . chr(34) . 'Perlito5::Match' . chr(34) . ']' . chr(10) . '    ])' . chr(59) . chr(10) . chr(125) . ')' . chr(59) . chr(10) . chr(10) . 'make_sub(' . chr(34) . 'Perlito5::Grammar' . chr(34) . ', ' . chr(34) . 'space' . chr(34) . ', function(List__) ' . chr(123) . chr(10) . '    var v_grammar ' . chr(61) . ' List__[0]' . chr(59) . chr(10) . '    var v_str     ' . chr(61) . ' List__[1]' . chr(59) . chr(10) . '    var v_pos     ' . chr(61) . ' List__[2]' . chr(59) . chr(10) . '    return NAMESPACE.CORE.bless([' . chr(10) . '        new HashRef(' . chr(123) . chr(10) . '            str:  v_str,' . chr(10) . '            from: v_pos,' . chr(10) . '            to:   v_pos + 1,' . chr(10) . '            bool: v_str.substr(v_pos, 1).match(' . chr(47) . chr(92) . 's' . chr(47) . ') ' . chr(33) . chr(61) . ' null,' . chr(10) . '        ' . chr(125) . '),' . chr(10) . '        CLASS[' . chr(34) . 'Perlito5::Match' . chr(34) . ']' . chr(10) . '    ])' . chr(59) . chr(10) . chr(125) . ')' . chr(59) . chr(10) . chr(10) . 'function perl5_to_js( source, namespace, var_env_js ) ' . chr(123) . chr(10) . '    ' . chr(47) . chr(47) . ' say( ' . chr(34) . 'source: [' . chr(34) . ' + source + ' . chr(34) . ']' . chr(34) . ' )' . chr(59) . chr(10) . chr(10) . '    var var_env_js_old ' . chr(61) . ' NAMESPACE[' . chr(34) . 'Perlito5' . chr(34) . '].v_VAR' . chr(59) . chr(10) . '    NAMESPACE[' . chr(34) . 'Perlito5' . chr(34) . '].v_VAR ' . chr(61) . ' var_env_js' . chr(59) . chr(10) . chr(10) . '    var namespace_old ' . chr(61) . ' NAMESPACE[' . chr(34) . 'Perlito5' . chr(34) . '].v_PKG_NAME' . chr(59) . chr(10) . '    NAMESPACE[' . chr(34) . 'Perlito5' . chr(34) . '].v_PKG_NAME ' . chr(61) . ' namespace' . chr(59) . chr(10) . chr(10) . '    match ' . chr(61) . ' CLASS[' . chr(34) . 'Perlito5::Grammar' . chr(34) . '].exp_stmts([CLASS[' . chr(34) . 'Perlito5::Grammar' . chr(34) . '], source, 0])' . chr(59) . chr(10) . chr(10) . '    ast ' . chr(61) . ' NAMESPACE.CORE.bless([' . chr(10) . '        new HashRef(' . chr(123) . chr(10) . '            block:  NAMESPACE.CORE.bless([' . chr(10) . '                        new HashRef(' . chr(123) . chr(10) . '                            stmts:   match._class_.flat([match]),' . chr(10) . '                        ' . chr(125) . '),' . chr(10) . '                        CLASS[' . chr(34) . 'Perlito5::AST::Lit::Block' . chr(34) . ']' . chr(10) . '                    ]),' . chr(10) . '        ' . chr(125) . '),' . chr(10) . '        CLASS[' . chr(34) . 'Perlito5::AST::Do' . chr(34) . ']' . chr(10) . '    ])' . chr(59) . chr(10) . chr(10) . '    ' . chr(47) . chr(47) . ' CORE.say( ' . chr(34) . 'ast: [' . chr(34) . ' + perl(ast) + ' . chr(34) . ']' . chr(34) . ' )' . chr(59) . chr(10) . '    js_code ' . chr(61) . ' ast._class_.emit_javascript([ast])' . chr(59) . chr(10) . '    ' . chr(47) . chr(47) . ' CORE.say( ' . chr(34) . 'js-source: [' . chr(34) . ' + js_code + ' . chr(34) . ']' . chr(34) . ' )' . chr(59) . chr(10) . chr(10) . '    NAMESPACE[' . chr(34) . 'Perlito5' . chr(34) . '].v_PKG_NAME ' . chr(61) . ' namespace_old' . chr(59) . chr(10) . '    NAMESPACE[' . chr(34) . 'Perlito5' . chr(34) . '].v_VAR      ' . chr(61) . ' var_env_js_old' . chr(59) . chr(10) . '    return js_code' . chr(59) . chr(10) . chr(125) . chr(10))
};
1;

1;
