use Test;
use HTML::MagicTemplate;
use CGI;
BEGIN {  plan tests => 2 }


$expected = << '__EOF__';
<form action="my.cgi" method="get" name="FormName">
<input border="0" value="text1" size="25" type="text" name="textfield1">
<p><input border="0" value="text2" size="24" type="password" name="textfield2"></p>
<p><textarea name="textarea1" rows="4" cols="40">textarea1</textarea></p>
<p><input border="0" value="ch1" type="checkbox" name="checkbox1"><input border="0" value="ch2" type="checkbox" checked name="checkbox2"></p>
<p><input border="0" value="r1" type="radio" name="group1"><input border="0" value="r2" type="radio" checked name="group1"><input border="0" value="r3" type="radio" name="group1"></p>
<p><select name="select1" size="1">
<option selected value="one">first</option>
<option value="two">second</option>
<option selected value="three">third</option>
</select></p>
<p><input border="0" value="hidden1" type="hidden" name="hidden1"></p>
</form>
__EOF__


$mt = new HTML::MagicTemplate ;
$mt2 = new Text::MagicTemplate {-markers     => 'HTML',
                               -behaviours => 'HTML'} ;


$query = new CGI {
	textfield1 => 'text1',
	textfield2 => 'text2',
	textarea1 => 'textarea1',
	checkbox1 => undef,
	checkbox2 => 'ch2',
	group1 => 'r2',
	select1 => ['one', 'three'],
	hidden1 => 'hidden1',
};

$tmp = do{local $/;<DATA>};

$form = $mt->output(\$tmp);
ok ($$form."\n" , $expected);

$form = $mt2->output(\$tmp);
ok ($$form."\n" , $expected);



__DATA__
<!--{query}--><form action="my.cgi" method="get" name="FormName">
<input type="text" name="textfield1" size="25" border="0" value="ppp">
<p><input type="password" name="textfield2" size="24" border="0"></p>
<p><textarea name="textarea1" rows="4" cols="40"></textarea></p>
<p><input type="checkbox" name="checkbox1" value="ch1" border="0"><input type="checkbox" name="checkbox2" value="ch2" border="0"></p>
<p><input type="radio" name="group1" value="r1" border="0"><input type="radio" name="group1" value="r2" border="0"><input type="radio" name="group1" value="r3" border="0"></p>
<p><select name="select1" size="1">
<option value="one">first</option>
<option value="two">second</option>
<option value="three">third</option>
</select></p>
<p><input type="hidden" name="hidden1" value="hiddenValue" border="0"></p>
</form><!--{/query}-->