# Perl
Perl programming language

## About Perl
Perl's legacy is regular expression or 'regex'. Perl is still used on some servers to automate processes. The problem that perl has it had many variants. Initially it was made very flexible so you could do things with many different ways. So finally noone could read what the code was supposed to do. It was compact but not very readable code.

* Author - Larry Wall
* First appeared - December 18, 1987
* Extention - '.pl'

## Links
* Perl - https://www.perl.org/
* Srawberry Perl - https://strawberryperl.com/
* Wikipedia - https://en.wikipedia.org/wiki/Perl

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

## Hello World!
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





