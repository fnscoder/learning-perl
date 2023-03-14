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

print "Hello world\n";

# variables in perl
# should start with letter or underscores and can have numbers after
# data types in perl
# scalars | arrays | hashs

# scalars $ store strings or numbers (just one value)
# arrays @ store collections of strings and numbers
# hashs % store key value (similar to python dicts)

# local variables `my`
# global variables `our`

my $name = 'Felipe';

print "Hello $name\n";

my ($age, $street) = (40, '123 Main St');

# when using strings, if we use double quotes we can include things like \n

my $my_info = "$name lives on \"$street\"\n";
print $my_info;

my $my_info2 = qq{$name lives on "$street"\n};
print $my_info2;

my $my_info3 = "$name lives on '$street'\n";
print $my_info3;

my $bunch_of_info = <<"END";
This is a 
bunch of information
on multiple lines
END

say $bunch_of_info;

print $bunch_of_info;

# printf allows us to format strings defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)

# the biggest number we can use in perl
my $big_int = 18446744073709551615;
print "$big_int\n";
say $big_int;
printf("%u \n", $big_int + 1);

# floats we can trust precision to 16 digits

my $big_float = .1000000000000001;

printf("%.16f \n", $big_float + .1000000000000001);

my $first = 1;
my $second = 2;

($first, $second) = ($second, $first);

say $first;
say $second;

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


# conditionals
# in perl there is no False, perl considerates undef 0 0.0 "" "0" as False
# boolean operators == !=< > <= >=
# not !, and &&, or ||

 my $age = 80;
 my $is_not_intoxicated = 1;
 my $age_last_exam= 77;

 if($age < 16){
    say "You can't drive";
 } elsif(!$is_not_intoxicated){
    say "You can't drive";
 } else {
    say "You can drive";
 }

 if (($age >= 1) && ($age < 16)){
    say "You can't drive";
 } elsif (!$is_not_intoxicated){
    say "You can't drive";
 } elsif (($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))) {
    say "You can't drive";
 } else {
    say "You can drive";
 }

 # strings compare operators
 # eq ne lt le gt ge
if ('a' eq 'b'){
    say "a equals b";
} else {
    say "a doens't equal b";
}

unless (!$is_not_intoxicated) {
    say "Get sober";
}


say (($age > 18) ? "Can vote" : "Can't vote");


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

