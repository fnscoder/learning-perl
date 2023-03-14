use strict;
use warnings;
use diagnostics;

# use a specific perl version
use v5.30;

# use "say" to print a statement and add a new line
use feature 'say';

sub get_random {
    return int(rand 11);
}

say "Random number ", get_random();

sub get_random_max {
    # @_ store the args passed to the functions
    my ($max_number) = @_;

    # defines a default value in case we didn't pass the value in the function call
    $max_number ||= 1000;

    return int(rand $max_number);
}

say "Random number (Max 100) ", get_random_max(100);

say "Random number (Max 1000 - Default value) ", get_random_max();

sub get_sum {
    my ($num1, $num2) = @_;

    $num1 ||= 1;
    $num2 ||= 2;

    return $num1 + $num2;
}

say "Get sum 5, 10 ", get_sum(5, 10);

say "Get sum default ", get_sum();

sub sum_many {
    my $sum = 0;

    foreach my $val (@_){
        $sum += $val;
    }

    return $sum;
}

say "Sum many ", sum_many(1,2,3,4,5);

# retain values for different executions of the function using state keyword
sub increment {
    state $execute_total = 0;
    $execute_total++;
    say "Executed $execute_total times";
}

increment();
increment();


# return multiple values

sub double_array {
    my @num_array = @_;
    $_ *= 2 for @num_array;

    return @num_array;
}

say "Double array ", double_array(1,2,3);

my @rand_array = (1,2,3,4,5);

print join(", ", double_array(@rand_array)), "\n";

sub get_mults {
    my ($rand_num) = @_;
    $rand_num ||= 11;

    return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);

say "3 x 2 is $dbl_num and 3 x 3 is $trip_num";

# recursive
sub factorial {
    my ($num) = @_;

    return 0 if $num <= 0;
    return 1 if $num == 1;

    return $num * factorial($num - 1);
}

say "factorial of 4 is ", factorial(4);