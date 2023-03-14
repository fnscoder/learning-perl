use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;

# use "say" to print a statement and add a new line
use feature 'say';

my %employees = (
  "Sue" => 35,
  "Paul" => 43,
  "Sam" => 39
);
 
# Use $ to access the hash value
# Note you don't have to use quotes for the key
printf("Sue is %d \n", $employees{Sue});
 
# Add a new key value to a hash
$employees{Frank} = 44;
 
# Iterate over hash and print keys and values
while (my ($k,$v)=each %employees){print "$k $v\n"}
 
# You can slice data from a hash
my @ages = @employees{"Sue", "Sam"};
say @ages;
 
# Convert a hash into an array
my @hash_array = %employees;
say @hash_array;
 
# Delete a key / value
delete $employees{'Frank'};
 
# Cycle through all key values with each
while (my ($k,$v)=each %employees){print "$k $v\n"}
 
# Check if Sam exists and print out using the Ternary
# Operator
say ((exists $employees{'Sam'}) ? "Sam is here" : "No Sam");
 
# Cycle through keys with keys
for my $key (keys %employees){
  if ($employees{$key} == 35){
    say "Hi Sue";
  }
}