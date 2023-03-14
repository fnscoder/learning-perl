use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;

# use "say" to print a statement and add a new line
use feature 'say';

my $emp_file = 'employees.txt';

# $fh is the file handler which is used to access the file
# < means we are opening the file for reading
# or die if can't read the file
# $! Provides an error message ($! or $_)?
open my $fh, '<', $emp_file or die "Can't open file: $!";

while (my $info = <$fh>){
    chomp($info);
    my ($emp_name, $job, $id) = split /:/, $info;

    print "$emp_name is a $job and has the id $id\n";
}

close $fh or die "Couldn't close file $!";

# open file to apend data at the end of the file
open $fh, '>>', $emp_file or die "Can't open file $!";

print $fh "Jon:Salesman:125\n";

close $fh or die "Couldn't close file $!";

# open file to read and write +<
open $fh, '+<', $emp_file or die "Can't open file $!";

# seek to the beginning
seek $fh, 0, 0;

# insert item
print $fh "Phil:Salesman:126\n";

close $fh or die "Couldn't close file $!";