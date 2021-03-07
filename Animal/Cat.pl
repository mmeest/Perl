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