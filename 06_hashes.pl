use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.14.2;

# defining hash
my %employees = (
"Sue"=>35,
"Paul"=>43,
"Sam"=>39
);

printf("Sue is %d \n", $employees{Sue});

# insert into hash
$employees{Frank} = 44;

while (my ($k, $v)=each %employees){print "$k $v\n"}

# slice from hash
my @ages = @employees{"Sue", "Sam"};
say @ages;

# convert hash into array
my @hash_array = %employees;

# delete key and value
delete $employees{'Frank'};

while (my ($k, $v)=each %employees){print "$k $v\n"}

# to check if value exists in hash
say ((exists $employees{'Sam'}) ? "Sam is here" : "No Sam");

# cycle thru keys
for my $key (keys %employees){
	if($employees{$key} == 35){
		say "Hi Sue";
	}
}