package Animal::Lion;

use Animal::Cat;
use strict;

# to innherite all the variables and sub routines from Cat we must use this
our @ISA = qw(Animal::Cat);

sub getSound {
    my ($self) = @_;
    return $self->{name}, " says Rowrr";
}

1;