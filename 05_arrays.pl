use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.14.2;

# array of numbers
my @primes = (2,3,5,7,11,13,17);

# array of different data types
my @my_info = ("Derek", "123 Main St", 40, 6.25);

# assign new value using index
$my_info[4] = "Banas";

# cycle thru array
for my $info (@my_info){
	say $info;
}

foreach my $num (@primes){
	say $num;
}

for (@my_info){
	say $_;
}

# slice data from array
my @my_name = @my_info[0, 4];
say @my_name;

# length of array
my $items = scalar @my_info;

say $items;

# assigne values to variables
my ($f_name, $address, $how_old, $height, $l_name) = @my_info;

say "$f_name $l_name";

# pop - remove last item
say "Popped Value ", pop @primes;

# push - add value to the end of array
say "Pushed Value ", push @primes, 17;

# shift - return first item
say "First Item ", shift @primes;

# unshift - add value to the front
say "Unshifted Item ", unshift @primes, 2;

print join(", ", @primes), "\n";

# splice out values
say "Remove Index 0 - 2", splice @primes, 0, 3;
print join(", ", @primes), "\n";

# join - join two lists
print join " ", ('list', 'of', 'words', "\n");

# split - turn string into array
my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";

# reverse - reversing an array
@cust_array = reverse @cust_array;

# sort - sorting array
@cust_array = sort @cust_array;

# reverse sort - sorting array
@cust_array = reverse sort @cust_array;

# grep - filter list according to expression
my @number_array = (1,2,3,4,5,6,7,8);

my @odds_array = grep {$_ % 2} @number_array;
print join(", ", @odds_array), "\n";

# map - 
my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";