use HTML::TableTiler ;

sub
{
    my ($s, $t, $v, $l) = @_;
    ref $v eq 'ARRAY'
    && eval
    {
        local $SIG{__DIE__};
        HTML::TableTiler::tile_table( $v, $t->{content} && \$t->{content}, $t->{attributes} )
    }
}