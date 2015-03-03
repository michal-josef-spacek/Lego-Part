package Lego::Part::Action;

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);
use English;
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

# Load design id.
sub load_design_id {
	my ($self, $part_transfer_class, $part) = @_;
	$self->_check_part_transfer_class($part_transfer_class);
	eval {
		$part_transfer_class->element2design($part);
	};
	if ($EVAL_ERROR) {
		err 'Cannot load design ID.',
			'Error', $EVAL_ERROR;
	}
	return;
}

# Load element id.
sub load_element_id {
	my ($self, $part_transfer_class, $part) = @_;
	$self->_check_part_transfer_class($part_transfer_class);
	eval {
		$part_transfer_class->design2element($part);
	};
	if ($EVAL_ERROR) {
		err 'Cannot load element ID.',
			'Error', $EVAL_ERROR;
	}
	return;
}

# Check transfer class.
sub _check_part_transfer_class {
	my ($self, $part_transfer_class) = @_;
	if (! blessed($part_transfer_class)
		|| ! $part_transfer_class->isa('Lego::Part::Trasfer')) {

		err "Bad transfer class. Must be 'Lego::Part::Transfer' ".
			'class.';
	}
	return;
}

1;

__END__
