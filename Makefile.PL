use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Db::DFC',
    'VERSION_FROM'	=> 'DFC.pm', # finds $VERSION
    'PREREQ_PM'		=> {}, # e.g., Module::Name => 1.1
    'AUTHOR'    => 'M. Scott Roth (michael.s.roth@saic.com)',
    'ABSTRACT'  => 'Interface to Documentum\'s DFC Java classes'
);
