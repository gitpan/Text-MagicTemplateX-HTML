use HTML::FillInForm 1.0;

sub
{
    my ($s, $t, $v, $l) = @_;
    ref $v && defined UNIVERSAL::can($v, 'param')
    && eval
    {
        local $SIG{__DIE__};
        HTML::FillInForm->new->fill( scalarref=>\$t->{content}, fobject=>$v )
    }
}
