use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.14.2;

my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if($age < 16){
	say "You can't drive";
} elsif(!$is_not_intoxicated){
	say "You can't drive";
} else {
	say "You can drive";
}

if(($age >= 1) && ($age < 16)){
	say "Yout can't drive";
} elsif(!$is_not_intoxicated){
	say "You can't drive";
} elsif(($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))){
	say "You can't drive";
} else {
	say "You can drive";
}

# String comparsion
if('a' eq 'b'){
	say "a equals b";
} else {
	say "a doesn't equal b";
}

unless(!$is_not_intoxicated){
	say "Get Sober";
}

# returnary operator
say (($age > 18) ? "Can Vote" : "Can't Vote");