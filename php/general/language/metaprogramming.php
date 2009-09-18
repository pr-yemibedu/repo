<?php

// run the supplied code through the php interpreter
eval('function f($a, $b) { return $a + $b; }');
echo f(1, 1) . "\n"; // 2

// create an anonymous function and assign it to a variable
$f = create_function('$a, $b', 'return $a + $b;');
echo $f(1, 1) . "\n"; // 2

// get all available functions
$defined_functions = get_defined_functions();
print_r( $defined_functions['user'] ); // user defined functions
print_r( $defined_functions['internal'] ); // built-in functions

// instantiate a class not known until runtime
class Foo { function __toString() { return "It's Foo"; } }
$class_name = 'Foo';
$foo = new$class_name;
echo $foo . "\n";

?>