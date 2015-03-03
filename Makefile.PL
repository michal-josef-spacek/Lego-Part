# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Lego part object.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'Lego-Part';
readme_from 'Part.pm';
requires 'Class::Utils' => 0.03;
requires 'Error::Pure' => 0.22;
requires 'Scalar::Util' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Lego-Part';
resources 'homepage' => 'https://github.com/tupinek/Lego-Part';
resources 'repository' => 'git://github.com/tupinek/Lego-Part';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.02';

# Run.
WriteAll();
