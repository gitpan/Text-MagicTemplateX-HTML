use ExtUtils::MakeMaker;

WriteMakefile
(
    NAME             => 'Text::MagicTemplateX::HTML',
    VERSION_FROM     => 'lib/Text/MagicTemplateX/HTML.pm',
 	($] ge '5.005') ? (
 	AUTHOR           => 'Domizio Demichelis <dd\@4pro.net>',
    ABSTRACT         => 'HTML extended behaviours for Text::MagicTemplate',
	) : (),
    PREREQ_PM        => { Text::MagicTemplate => 2.1,
                          HTML::TableTiler    => 1.0,
                          HTML::FillInForm    => 1.0 }

);
