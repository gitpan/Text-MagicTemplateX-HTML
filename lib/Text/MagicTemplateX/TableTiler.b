use HTML::TableTiler ;

sub
{
    my ($s, $z) = @_;
    ref $z->value eq 'ARRAY'
    && eval
    {
        local $SIG{__DIE__};
        HTML::TableTiler::tile_table( $z->value, $z->content && \$z->{content}, $z->{attributes} )
    }
}