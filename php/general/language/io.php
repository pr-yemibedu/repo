<?php

$input_file_path = 'input.txt';
$input_file_handle = fopen($input_file_path, 'r') or die("Failed to open " + $input_file_path);

// process a line at a time
while(! feof($input_file_handle) )
{
  $line = fgets($input_file_handle); // get a line at a time
  $line = trim( $line ); // trim spaces before & after
  echo $line . "\n";
}

fclose($input_file_handle);

?>