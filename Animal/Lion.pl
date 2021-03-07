package Animal::Lion;

use Animal::Cat;
use strict;

our @ISA = qw(Animal::Cat);			# inherit all variables from 'Cat'

sub getSound {					# override method
	my ($self) = @_;
	return $self->{name}, " says Rowrrr";
}