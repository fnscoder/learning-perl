# avoid weird behaviour give better error messages and write better code
use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;


# use "say" to print a statement and add a new line
use feature 'say';

# swicht statement in perl is given/when
use feature "switch";


# switch | given when

my $age_old = 18;

given($age_old){
    when($_ > 16){
        say "Drive";
        # continue will make it to check the next condition
        # If we don't put it it wil not check the next when
        continue;
    }
    when($_ > 17){
        say "Go vote";
    }
    default{
        say "Nothing special";
    }
}

