use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.14.2;

say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;		# Modulus division gives remainder
say "5 ** 4 = ", 5 ** 4;	# Power of 4

say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.45);
say "Log 2 = ", log 2;
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# assignement operators
# +=, -=, *=, /=

my $rand_num = 5;
$rand_num += 1;
# same as:
$rand_num = $rand_num + 1;
say "Number Incremented ", $rand_num;

# shortcuts to increment and decrement
say "6++ = ", $rand_num++;	# firstly printed then added
say "++6 = ", ++$rand_num;	# firstly added then printed
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;

say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;