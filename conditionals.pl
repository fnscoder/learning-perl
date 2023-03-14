# avoid weird behaviour give better error messages and write better code
use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;


# use "say" to print a statement and add a new line
use feature 'say';

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