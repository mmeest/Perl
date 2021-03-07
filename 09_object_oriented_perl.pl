use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.14.2;

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