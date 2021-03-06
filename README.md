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
%C - Character
%s - string
%d - Decimal
%u - Unsigned integer
%f - Floating Point (Decimal Notation)
%e - Floating Point (Scientific Notation)

2. Arrays
3. Hashes

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




