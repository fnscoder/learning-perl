# avoid weird behaviour give better error messages and write better code
use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;


# use "say" to print a statement and add a new line
use feature 'say';

# loops

# for loop
for (my $i = 0; $i < 10; $i++){
    say $i;
}

# while loop
my $i = 1;
while ($i < 10) {
    if ($i % 2 == 0) {
        $i++;

        next; # similar to continue in Python
    }

    if ($i == 7){
        last; # similar to break. it stops the iteration
    }
    say $i;
    $i++;
}

# do ... while loop
my $i = 1;
my $lucky_num = 7;
my $guess;

do {
    say "Guess a Number between 1 and 10";

    $guess = <STDIN>;
} while $guess != $lucky_num;

say "You guessed 7";


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