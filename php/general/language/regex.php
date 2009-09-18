<?php

// returns true if regex (arg1) matches the arg2 string
echo preg_match('/^hello/', 'hello world') . "\n";

//  all matched pieces of the string are stored in the *captured* array
preg_match('/(hello)/', 'hello world.  hello universe.', $captured);
print_r($captured);

echo preg_replace('/\d+/', '99', '98 bottles of beer on the wall.') . "\n";

// returns an array of the split out strings
print_r( preg_split('{[+*/-]}', '3+5*9/2') );

// returns an array containing the matches
print_r( preg_grep('/\.txt$/', array('a.txt', 'b.xml', 'c.txt', 'd.rb') ) );


?>