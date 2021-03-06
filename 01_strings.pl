use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.14.2;

my $name = 'Derek';

my ($age, $street) = (40, '123 Main St');

# \ - escapecharacter
# \n - new line
# q - replace single quote '
# qq - replace double quote "
my $my_info = "$name lives on \"$street\"\n";	

$my_info = qq{$name lives on "$street"\n};
print $my_info;

my $bunch_of_info = <<"END";
This is a 
bunch of information
on multiple lines
END
say $bunch_of_info;

# switching values
my $first = 1;
my $second = 2;

($first, $second) = ($second, $first);

say "$first, $second";

# string length
my $long_string = "Random Long String";

say "Length of String ", length $long_string;

# index of
printf("Long is at %d \n", index $long_string, "Long");

# last index
printf("Last g is at %d \n", rindex $long_string, "g");

# concatenate
$long_string = $long_string . ' isn\'t that long';

# substring
say "Index 7 through 10 ", substr $long_string, 7, 4;

my $animal = "animals";

# chop will delete and return last character of string
printf("Last character is %s\n", chop $animal);
# chomp will delete new lines
my $no_newline = "No Newline\n";
chomp $no_newline;

# uc - uppercase
printf("Uppercase : %s \n", uc $long_string);
# lc - lowercase
printf("Lowercase : %s \n", lc $long_string);

# ucfirst - uppercase first
printf("1st uppercase : %s \n", ucfirst $long_string);

# lcfirst - lowercase first
printf("1st lowercase : %s \n", lcfirst $long_string);

# replace spaces with comma(g - all occurances)$long_string =~ s/ /, /g;say $long_string;
# multiple times
my $two_times = "What I said is " x 2;
say $two_times;

# .. - range(@ - array)
my @abcs = ('a' .. 'z');

print join(", ", @abcs), "\n";
# incrementing letter
my $letter = 'c';
say "Next Letter ", ++$letter;