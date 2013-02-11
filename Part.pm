package Lego::Part;

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);

# Version.
our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Color.
	$self->{'color'} = undef;

	# Lego id.
	$self->{'lego_id'} = undef;

	# Peeron type id.
	$self->{'peeron_type_id'} = undef;

	# Process parameters.
	set_params($self, @params);

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

# Get or set lego id.
sub lego_id {
	my ($self, $lego_id) = @_;
	if ($lego_id) {
		$self->{'lego_id'} = $lego_id;
	}
	return $self->{'lego_id'};
}

# Get or set peeron type id.
sub peeron_type_id {
	my ($self, $peeron_type_id) = @_;
	if ($peeron_type_id) {
		$self->{'peeron_type_id'} = $peeron_type_id;
	}
	return $self->{'peeron_type_id'};
}

1;
