package HTML::MagicTemplate;
$VERSION = 2.11;
use Text::MagicTemplate;
push @ISA, qw(Text::MagicTemplate);
use strict;

sub default_markers    { [ 'HTML' ] }
sub default_behaviours { [ 'HTML' ] }
__END__

=head1 NAME

HTML::MagicTemplate - HTML wrapper for Text::MagicTemplate used in a HTML environment.

=head1 SYNOPSIS

    $mt = new HTML::MagicTemplate;
    # is an alias of
    $mt = new Text::MagicTemplate { -markers => 'HTML', -behaviours => 'HTML' };

=head1 DESCRIPTION

HTML::MagicTemplate is a wrapper for Text::MagicTemplate that extends its behaviours when used in a HTML environment. This module is installed with Text::MagicTemplateX::HTML distribution as a simple shortcut to change the I<markers> and I<behaviours> defaults of its superclass.

Most of the interesting readings about how to use this module are in:

=over

=item *

L<Text::MagicTemplateX::HTML> (specific documentation about this I<Distribution>)

=item *

L<Text::MagicTemplateX> (general documentation about the I<Extensions> system)

=item *

L<Text::MagicTemplate> (general documentation about the I<MagicTemplate> system)

=item *

L<Text::MagicTemplate::Tutorial|Text::MagicTemplate::Tutorial>

=back

=head1 SEE ALSO

L<Text::MagicTemplateX::HTML|Text::MagicTemplateX::HTML>, L<Text::MagicTemplateX|Text::MagicTemplateX>, L<Text::MagicTemplate|Text::MagicTemplate>, L<Text::MagicTemplate::Tutorial|Text::MagicTemplate::Tutorial>.

=head1 SUPPORT and FEEDBACK

I would like to have just a line of feedback from everybody who tries or actually uses this module. PLEASE, write me any comment, suggestion or request. ;-)

More information at http://perl.4pro.net/?HTML::MagicTemplate.

=head1 AUTHOR

Domizio Demichelis, <dd@4pro.net>.

=head1 COPYRIGHT

Copyright (c)2002 Domizio Demichelis. All Rights Reserved. This is free software; it may be used freely and redistributed for free providing this copyright header remains part of the software. You may not charge for the redistribution of this software. Selling this code without Domizio Demichelis' written permission is expressly forbidden.

This software may not be modified without first notifying the author (this is to enable me to track modifications). In all cases the copyright header should remain fully intact in all modifications.

This code is provided on an "As Is'' basis, without warranty, expressed or implied. The author disclaims all warranties with regard to this software, including all implied warranties of merchantability and fitness, in no event shall the author, be liable for any special, indirect or consequential damages or any damages whatsoever including but not limited to loss of use, data or profits. By using this software you agree to indemnify the author from any liability that might arise from it is use. Should this code prove defective, you assume the cost of any and all necessary repairs, servicing, correction and any other costs arising directly or indrectly from it is use.

The copyright notice must remain fully intact at all times. Use of this software or its output, constitutes acceptance of these terms.