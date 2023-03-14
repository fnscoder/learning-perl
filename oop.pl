use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;

# use "say" to print a statement and add a new line
use feature 'say';

# In Perl a class corresponds to a package which is a
# self contained unit of variables and subroutines

# our packages (classes) are inside lib folder
use lib 'lib';

use Animal::Cat;

my $whiskers = new Animal::Cat("whiskers", "Felipe");

say $whiskers->getName();

$whiskers->setName("garfield");

say $whiskers->getName();

say $whiskers->getSound();

use Animal::Lion;

my $king = new Animal::Lion("King", "No owner");

say $king->getName();

say $king->getSound();