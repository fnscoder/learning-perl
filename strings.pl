use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;

# use "say" to print a statement and add a new line
use feature 'say';

my $long_string = "Random long string";

say "Length of String ", length $long_string;

say "Content of String $long_string";

printf("Long is at %d\n", index $long_string, "long");

# rindex return the last occurence
printf("Last g is at %d\n", rindex $long_string, "g");

$long_string = $long_string . ' isn\'t that long';

say "index 7 through 10 ", substr $long_string, 7, 10;

my $animal = "animals";

# chop deletes and returns the last character
printf("Last character is %s\n", chop $animal);

# chomp deletes the last newline
my $no_new_line = "No new line\n";
say $no_new_line;

chomp $no_new_line;
say $no_new_line;

printf("Uppercase: %s\n", uc $long_string);
printf("Lowercase: %s\n", lc $long_string);
printf("Uppercase: %s\n", ucfirst $long_string);
printf("Uppercase: %s\n", lcfirst $long_string);

# s/// takes a list of characters on the left and replaces
# them with characters on the right
# Replace spaces with comma space (similar to replace in python)
# g = Replace all occurances
# i = ignore case

$long_string =~ s/ /, /g;
say $long_string;

# x can repeat a string
my $two_times = "What I said is " x 2;
say $two_times;

# create a range of letter in an array
my @abcs = ('a' .. 'z');
say @abcs;

# Combine values in an array and define separation with join
print join(", ", @abcs), "\n";

# increment letter with ++
my $letter = 'c';
say "Next letter ", ++$letter;