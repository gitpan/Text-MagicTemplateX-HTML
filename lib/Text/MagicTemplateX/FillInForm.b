# behaviour extension
# Text::MagicTemplateX::HTML distribution version 2.11


use HTML::FillInForm 1.0;

sub
{
    my ($s, $z) = @_;
    ref $z->value && defined UNIVERSAL::can($z->value, 'param')
    && eval
    {
        local $SIG{__DIE__};
        HTML::FillInForm->new->fill( scalarref=>\$z->content, fobject=>$z->value )
    }
}