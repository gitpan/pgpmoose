use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'      => 'pgpmoose',
    'VERSION_FROM' => 'pgpmoose', # finds $VERSION
    'MAN3PODS'  => { 'pgpmoose' => '$(INST_MAN1DIR)/pgpmoose.1' },
    'EXE_FILES' => [ 'pgpmoose' ],
    'PREREQ_PM' => { 'News::Article' => 1.21, 'Net::NNTP' => 0,
        'Net::NNTP::Auth' => 0.5, 'News::Article::Cancel' => 0.71,
	'News::Newsrc' => 0 },
    'dist' => { COMPRESS => 'gzip', SUFFIX => 'gz' },
);
