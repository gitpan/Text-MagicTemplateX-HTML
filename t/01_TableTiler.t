use Test;
use HTML::MagicTemplate;
BEGIN {  plan tests => 2 }


$matrix = [[1..5],[6..10],[11..15]];

$expected = << '__EOT__';
<table border="0" cellspacing="1" cellpadding="3">

<tr>
	<td bgcolor="#9999cc">1</td>
	<td bgcolor="#ccccff">2</td>
	<td bgcolor="#9999cc">3</td>
	<td bgcolor="#ccccff">4</td>
	<td bgcolor="#9999cc">5</td>
</tr>
<tr>
	<td bgcolor="#9999cc">6</td>
	<td bgcolor="#ccccff">7</td>
	<td bgcolor="#9999cc">8</td>
	<td bgcolor="#ccccff">9</td>
	<td bgcolor="#9999cc">10</td>
</tr>
<tr>
	<td bgcolor="#9999cc">11</td>
	<td bgcolor="#ccccff">12</td>
	<td bgcolor="#9999cc">13</td>
	<td bgcolor="#ccccff">14</td>
	<td bgcolor="#9999cc">15</td>
</tr>

</table>
__EOT__


$mt = new HTML::MagicTemplate ;
$mt2 = new Text::MagicTemplate {-markers     => 'HTML',
                               -behaviours => 'HTML'} ;

$tmp = do{local $/;<DATA>};
$tiled_table = $mt->output(\$tmp);
ok ($$tiled_table, $expected);

$tiled_table = $mt2->output(\$tmp);
ok ($$tiled_table, $expected);

__DATA__
<!--{matrix V_TILE H_TILE}--><table border="0" cellspacing="1" cellpadding="3">
<tr>
	<td bgcolor="#9999cc">placeholder</td>
	<td bgcolor="#ccccff">placeholder</td>
</tr>
</table><!--{/matrix}-->
