<?php

$input_file_path = 'CSP2ML.PDL';
$input_file_handle = fopen($input_file_path, 'r') or die("Failed to open " + $input_file_path);

function is_math_line($line)
{
  return preg_match('/^math/', $line);
}

function is_formula($tokens)
{
  foreach($tokens as $key => $value)
  {
    if( is_operator( $value ) )
    {
      return true;
    }
  }
  return false;
}

function is_assignment($tokens)
{
  return !is_formula( $tokens );
}

function is_operator($token)
{
  return $token == '+' or $token == '-' or $token == '*' or $token == '/' or $token == '^';
}

function pdl_assignment_to_php($tokens)
{
  return '$' . $tokens[0] . ' = ' . $tokens[2] . ';';
}

// process a line at a time
while(! feof($input_file_handle) )
{
  $line = fgets($input_file_handle); // get a line at a time
  $line = trim( $line ); // trim spaces before & after
  
  // only interested in lines that start with "math "
  if ( is_math_line( $line ) )
  {
    $line = preg_replace('/^math /', '', $line); //strip off math
    $tokens = preg_split('/ +/', $line);
    print_r( $tokens );

  if( is_assignment( $tokens) )
    {
      echo pdl_assignment_to_php( $tokens ) . "\n";
      //print_r( $tokens );
      //$line_join = join( ' ', $tokens );
      //echo $line_join . "\n";
    }
  }
}

fclose($input_file_handle);

?>