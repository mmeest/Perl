<p align="center">
  <image src="perl.png" width="450px">
</p>
	
<h1 align="center">
  Perl - programming language
</h1>
	
<h3 align="center">
  <a target="_blank" href="https://www.perl.org/get.html">Perl.org</a>
	<span> · </span>
  <a target="_blank" href="https://strawberryperl.com/">Strawberryperl</a>
	<span> · </span>
  <a target="_blank" href="http://padre.perlide.org/">Padre - code editor</a>
	<span> · </span>
  <a target="_blank" href="https://www.perl.com/">Perl.com</a>
	<span> · </span>
  <a target="_blank" href="https://www.guru99.com/perl-tutorials.html">Learn Perl in 1 day</a>
</h3>
<br><br>

## Table of contents
- [About Perl](#about-perl)
- [Links](#links)
- [Installation](#installation)
- [Hello World](#hello-world)
- [Text formating](#text-formating)
- [Datatypes](#datatypes)
- [String operations](#string-operations)
- [Math](#math)
- [Conditionals](#conditionals)
- [Loops](#loops)
- [Switch statement](#switch-statement)
- [Arrays](#arrays)
- [Hashes](#hashes)
- [Subroutines](#subroutines)
- [File IO](#file-io)
- [Object oriented Perl](#object-oriented-perl)

## About Perl
Perl's legacy is regular expression or 'regex'. Perl is still used on some servers to automate processes. The problem that perl has it had many variants. Initially it was made very flexible so you could do things with many different ways. So finally noone could read what the code was supposed to do. It was compact but not very readable code.

* Author - Larry Wall
* First appeared - December 18, 1987
* Extention - '.pl'

## Links
* Perl - https://www.perl.org/
* Srawberry Perl - https://strawberryperl.com/
* Wikipedia - https://en.wikipedia.org/wiki/Perl


<image src="padre.png"> *Padre*
## Installation
1. Download latest version of Strawberry Perl from https://strawberryperl.com/
2. Or ActivePerl with Padre-editor from http://padre.perlide.org/download.html
3. Set Perl system path:
```
setx path "%path%;C:\Strawberry\perl\bin"
```
4. Log out and back in to your user account
5. Check version
```
perl -v
```

## Hello World
Type on Windows terminal:
```
perl -e "'print" "Hello World \n'"
```
And it should print out: Hello World

On Windows you probably get error: 
Can't find string termitantor "'" anywhere before EOF at -e line 1.
So you need to use escape characters '\':
```
perl -e "print \"Hello World\n\"";
```

Another solution is to type:
```
perl -e "'print" "Hello World \n'"
```

On Padre editor write:
```
print "Hello World\n";
```
And run the code

## Text formating
 \# - comment\
 \\ - escapecharacter\
 \\n - new line\
 q - replace single quote '\
 qq - replace double quote "

## Datatypes
1. Scalers - individual piece of data. For example:
```
my $name = 'Derek';
my ($age, $street) = (40, '123 Main St');
```
%C - Character\
%s - string\
%d - Decimal\
%u - Unsigned integer\
%f - Floating Point (Decimal Notation)\
%e - Floating Point (Scientific Notation)

2. Arrays
3. Hashes

## String operations
```
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

# replace spaces with comma(g - all occurances)
$long_string =~ s/ /, /g;

say $long_string;

# multiple times
my $two_times = "What I said is " x 2;
say $two_times;

# .. - range(@ - array)
my @abcs = ('a' .. 'z');

print join(", ", @abcs), "\n";

# incrementing letter
my $letter = 'c';
say "Next Letter ", ++$letter;
```

## Math
say "5 + 4 = ", 5 + 4;\
say "5 - 4 = ", 5 - 4;\
say "5 * 4 = ", 5 * 4;\
say "5 / 4 = ", 5 / 4;\
say "5 % 4 = ", 5 % 4;		# Modulus division gives remainder\
say "5 ** 4 = ", 5 ** 4;	# Power of 4

say "EXP 1 = ", exp 1;\
say "HEX 10 = ", hex 10;\
say "OCT 10 = ", oct 10;\
say "INT 6.45 = ", int(6.45);\
say "Log 2 = ", log 2;\
say "Random between 0 - 10 = ", int(rand 11);\
say "SQRT 9 = ", sqrt 9;

/# assignement operators
/# +=, -=, *=, /=

my $rand_num = 5;\
$rand_num += 1;+
/# same as:\
$rand_num = $rand_num + 1;\
say "Number Incremented ", $rand_num;

/# shortcuts to increment and decrement\
say "6++ = ", $rand_num++;	# firstly printed then added\
say "++6 = ", ++$rand_num;	# firstly added then printed\
say "6-- = ", $rand_num--;\
say "--6 = ", --$rand_num;

say "3 + 2 * 5 = ", 3 + 2 * 5;\
say "(3 + 2) * 5 = ", (3 + 2) * 5;

## Conditionals
**Conditional logic symbols**\
== - equal\
!= - not equal\
< - less than\
> - greater than\
<= - less than or equal to\
>= - greater than or equal to

**Strings comparsion operators**\
eq - equal to\
ne - not equal to\
lt - less than\
le - les thann or equal to\
gt - greater than\
ge - greater than or equal to

**Boolean operations**\
! - not\
&& - and\
|| - or

if, elsif, else\
unless - opposite of if\
Example of if conditions:
```
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
```

Example 2:
```
my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if(($age >= 1) && ($age < 16)){
	say "Yout can't drive";
} elsif(!$is_not_intoxicated){
	say "You can't drive";
} elsif(($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))){
	say "You can't drive";
} else {
	say "You can drive";
}
```

String comparsion:
```
if('a' eq 'b'){
	say "a equals b";
} else {
	say "a doesn't equal b";
}
```

## Loops
for loop:
```
for(my $i = 0; $i < 10; $i++){
	say $i;
}
```

next - skip back to beginning of loop('continue' in other languages)\
last - break out of loop('break' in other languages)\
while loop:
```
my $i = 1;

while($i < 10){
	if($i %2 == 0){
		$i++;				
		next;
	}
	if($i == 7){last;}
	say $i;
	$i++;
}
```

<STDIN> - input from user\
do while loop:
 
```
my $i = 1;

my $lucky_num = 7;

my $guess;

do {
	say "Guess a Number Between 1 and 10";
	
	$guess = <STDIN>;
} while $guess != $lucky_num;

say "You Guessed 7";
```

## Switch statement
```
my $i = 1;

my $age_old = 18;

given($age_old){
	when($_ > 16){
		say "Drive";
		continue;
	}
	when($_ > 17){say "Go Vote";}
	default {say "Nothing Special";}
}
```
## Arrays
```
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

# map - go thru all elements
my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";
```

## Hashes
Hashes use keys to access values

```
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
```

## Subroutines
Subroutines are functions that allow to call a block of code
```
# defining subroutine
sub get_random {
	return int(rand 11);
}

say "Random Number ", get_random();

# arguments
sub get_random_max {
	my ($max_num) = @_;			# $max_num - passed argument value
	
	$max_num ||= 11;			# 11 - default value
	return int(rand $max_num);
}
say "Random Number ", get_random_max(100);	# 100 - argument for function

# recieve multiple values
sub get_sum{
	my ($num_1, $num_2) = @_;
	
	$num_1 ||= 1;
	$num_2 ||= 1;
	
	return $num_1 + $num_2;
}

# to recieve unknown number of values
sub sum_many {
	my $sum = 0;
	foreach my $val (@_){
		$sum += $val;
	}
	return $sum;
}

say "Sum : ", sum_many(1,2,3,4,5);

# variable in function with state
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

my @rand_array = (1,2,3,4,5);

print join(", ", double_array(@rand_array)),"\n";

# return single variables
sub get_mults{
	my ($rand_num) = @_;
	return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);

say "$dbl_num $trip_num";

# recursive subroutines
sub factorial {
	my ($num) = @_;
	return 0 if $num <= 0;
	return 1 if $num == 1;
	return $num * factorial($num - 1);
}

say "Factorial 4 = ", factorial(4);
```

## File IO
Working with files
```
# read a file
my $emp_file = 'employees.txt';

open my $fh, '<', $emp_file			# fh - file handler, < - read only
	or die "Can't Open File : $_";
	
while(my $info = <$fh>){
	chomp($info);
	
	my ($emp_name, $job, $id) = split /:/, $info;
	
	print "$emp_name is a $job and has the id $id \n";
}
	
close $fh or die "Couldn't Close File : $_";	# close the file

# open file for appending data
open $fh, '>>', $emp_file			# >> - append
	or die "Can't Open File : $_";
	
print $fh "John:Carpenter:126\n";
close $fh or die "Couldn't Close File : $_";	# close the file

# read and write from file
open $fh, '+<', $emp_file			# +< - 
	or die "Can't Open File : $_";
	
seek $fh, 0, 0;					# go to the beginning of file

print $fh "Phil:Salesman:125\n";
close $fh or die "Couldn't Close File : $_";	# close the file
```

## Object oriented Perl
In Perl class corresponds to a package that is self contained unit of variables and subroutines

package 'Cat'
```
package Animal::Cat;					# package name

use strict;
use warnings;

sub new{						# constructor
	my $class = shift;				# passed arguments
	my $self = {					# reference to actual object
		name => shift,
		owner => shift
	};
	bless $self, $class;				# returning a reference
	return $self;					# return finished object to be used
}

sub getName {
	my ($self) = @_;
	return $self->{name};				# return the value of name
}

sub setName {
	my ($self, $name) = @_;
	$self->{name} = $name if defined($name);	# setting the value for name
	return $self->{name};				# return the value of name
}

sub getSound {
	my ($self) = @_;
	return $self->{name}, " says meow";		# return the sound value of name
}

1;							# ending package (1 - return TRUE)
```

package 'Lion'
```
package Animal::Lion;

use Animal::Cat;
use strict;

our @ISA = qw(Animal::Cat);			# inherit all variables from 'Cat'

sub getSound {					# override method
	my ($self) = @_;
	return $self->{name}, " says Rowrrr";
}
```

creating instances of a class
```
# to use folders
use lib 'lib';

# reference to use package Animal::Cat
use Animal::Cat;

# creating Cat object
my $whiskers = new Animal::Cat("whiskers", "Derek");

# calling a subroutine and getting object's name
say $whiskers->getName();

# setting object's name
$whiskers->setName("Whiskers");

say $whiskers->getName();

say $whiskers->getSound();

use Animal::Lion;

use $king = new Animal::Lion("King", "No Owner");

say $king->getSound();
```
