use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'MIME::Base2',
    'VERSION_FROM'	=> 'Base2.pm', # finds $VERSION
    'PREREQ_PM'		=> {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ? (
      ABSTRACT_FROM => 'Base2.pm', 
      AUTHOR     => '-',
    ) : ()),
);
