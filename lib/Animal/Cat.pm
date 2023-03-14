package Animal::Cat;

use strict;
use warnings;

# create the constructor, the constructor could be called new or anything else
sub new {
    my $class = shift;
    my $self = {
        name => shift,
        owner => shift
    };
    # bless will return the reference for us
    bless $self, $class;

    # return the finished obj to be used
    return $self;
}

sub getName {
    my ($self) = @_;
    return $self->{name};
}

sub setName {
    my ($self, $name) = @_;
    $self->{name} = $name if defined($name);

    return $self->{name};
}

sub getSound {
    my ($self) = @_;
    return $self->{name}, " Says meow";
}

# we have to return 1 from our packages bc it must return true when its called
1;
