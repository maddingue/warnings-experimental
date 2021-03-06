package warnings::experimental;
use warnings;

sub import {
    warnings->import;
}

sub unimport {
    if ($] >= 5.018) {
        warnings->unimport("experimental");
    }
}

1

__END__

=head1 NAME

warnings::experimental - control warnings on experimental features

=head1 SYNOPSIS

    no  warnings::experimental;

=head1 DESCRIPTION

The only purpose of this module is to have a simple way to control
warnings on experimental features generated by recent versions of
Perl (v5.18+), yet avoid to make the code require 5.18. This problem
arises when coding over several versions of Perl (5.14, 5.16, 5.18),
where all allow modern features like C<given>/C<when>, but only the
latter warns about it.

B<Note:> Remember to put the line loading this module I<after> any
module that enables warnings, like C<Modern::Perl>, C<Moose>, etc.

=head1 AUTHOR

Sebastien Aperghis-Tramoni

