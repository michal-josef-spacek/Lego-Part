package Lego::Part::Transfer;

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);
use Error::Pure qw(err);
use Scalar::Util qw(blessed);

# Version.
our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	# Object.
	return $self;
}

# Convert element to design.
sub element2design {
	my ($self, $part) = @_;
	$self->_check_part($part);
	err "This is abstract class. element2design() method not implemented.";
	return;
}

# Convert design to element.
sub design2element {
	my ($self, $part) = @_;	
	$self->_check_part($part);
	err "This is abstract class. design2element() method not implemented.";
	return;
}

# Check part class.
sub _check_part {
	my ($self, $part) = @_;
	if (! blessed($part) || ! $part->isa('Lego::Part')) {
		err "Part must be Lego::Part object.";
	}
	return;
}

1;

__END__
