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
