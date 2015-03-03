package Lego::Part;

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);
use Error::Pure qw(err);

# Version.
our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Color.
	$self->{'color'} = undef;

	# Lego design id.
	$self->{'design_id'} = undef;

	# Lego element id.
	$self->{'element_id'} = undef;

	# Process parameters.
	set_params($self, @params);

	# Check design id or element id.
	if (! defined $self->{'element_id'}
		&& ! defined $self->{'design_id'}) {

		err "Parameter 'element_id' or 'design_id' is required.";
	}

	# Object.
	return $self;
}

# Get or set color.
sub color {
	my ($self, $color) = @_;
	if ($color) {
		$self->{'color'} = $color;
	}
	return $self->{'color'};
}

# Get or set lego design id.
sub design_id {
	my ($self, $design_id) = @_;
	if ($design_id) {
		$self->{'design_id'} = $design_id;
	}
	return $self->{'design_id'};
}

# Get or set lego element id.
sub element_id {
	my ($self, $element_id) = @_;
	if ($element_id) {
		$self->{'element_id'} = $element_id;
	}
	return $self->{'element_id'};
}

1;
