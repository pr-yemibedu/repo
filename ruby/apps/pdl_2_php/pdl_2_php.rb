require 'pp'
filename = "CSP2ML.PDL"
output = "CSP2ML.php"

module Helpers

  def is_numeric s
    s !~ /[a-zA-z]+/
  end

  def is_operator s
    ["+", "-", "*","/","^"].each do |op|
        return true if op == s
    end
    false  
  end

  def is_variable s
    not(is_numeric(s) or is_operator(s) or s == "=")
  end

  def is_formula tokens
    result = false
    tokens.each do |op|
        return true if is_operator(op)
    end
    false  
  end

  def get_parameters tokens
    parameters = []
    (tokens || []).each do |t|
      parameters << t unless is_numeric(t) or is_operator(t) or t == "="
    end
    parameters
  end

  def localize_variables tokens
    tokens.collect {|t| is_variable(t) ? "$#{t}" : t }
  end

  def rename_invalid_variable_names tokens
    tokens.collect! {|t| is_variable(t) ? t.sub("/", "_") : t }
    tokens.collect! {|t| is_variable(t) ? t.sub("+", "_") : t }  
    tokens.collect! {|t| is_variable(t) ? t.sub(".", "_") : t }  
  end
end

include Helpers

def to_php_assignment tokens
#  tokens = rename_invalid_variable_names(tokens)
  tokens[2] = "$#{tokens[2]}" unless is_numeric(tokens[2])
  "$#{tokens[0]} = #{tokens[2]};"
end

def to_php_function tokens
#  tokens = rename_invalid_variable_names(tokens)
  statement_tokens = tokens[2, tokens.size] # right hand side of '='
  parameters = get_parameters(statement_tokens).collect! { |p| "$#{p}" }
  parameters = parameters.join(", ")
  statement = localize_variables(statement_tokens).join(" ")
  "function #{tokens[0]}(#{parameters}) { return #{statement}; }"
end

lines = []

# get all lines in file
File.open(filename) do |file|
	lines = file.readlines.each do |line|
		line.chomp!
	end
end

# get lines that begin with "math"
lines.delete_if {|l| l !~ /^.*math/ }

lines.delete_if {|l| l =~ /DACperGram/ }

lines.delete_if {|l| l =~ /2nd_Approach/ }

# strip "math" from lines
lines.collect! { |l| l.sub!(/^.*math /, "")}

lines.collect! {|l| l.sub("^", " ^ ") }

# split each line in to tokens and store in array
lines.collect! {|l| l.split }

lines.collect! {|l| l = rename_invalid_variable_names(l) }

output_file = File.open(output, "w")
output_file.puts "<?php"

symbol_table = []

lines.each do |l|
  if is_formula(l)
    unless symbol_table.include?(l[0])
      output_file.puts to_php_function(l) 
      symbol_table << l[0]
    end
  else
   output_file.puts to_php_assignment(l)
  end
end
output_file.puts "?>"
output_file.close