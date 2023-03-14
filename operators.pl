# avoid weird behaviour give better error messages and write better code
use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;

# use "say" to print a statement and add a new line
use feature 'say';

# random number
say "Random between 0 - 10 ", int(rand 11);

# math
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

# Built in functions
# Includes Trig functions plus
say "EXP 1 = ", exp 1; # e to the power of
say "HEX 10 = ", hex 10; # Convert from hexidecimal
say "OCT 10 = ", oct 10; # Convert from Octal
say "INT 6.45 = ", int(6.45); # Truncate You can use parentheses
say "LOG 2 = ", log 2; # Number to the power of e
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# Assignment Operators
# +=, -=, *=, /=
my $rand_num = 5;
$rand_num += 1;
say "Number Incremented ", $rand_num;

# Shortcut Increment and Decrement
say "6++ = ", $rand_num++;  # first print and then increment
say "++6 = ", ++$rand_num;  # first increment and then print
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;