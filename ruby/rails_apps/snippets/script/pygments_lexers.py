#!/usr/bin/env python
from pygments.lexers import get_all_lexers
lexers = get_all_lexers()
lexer_names = []
for lexer in lexers:
  for name in lexer[1]:
    lexer_names.append(name)

lexer_names.sort()
print lexer_names
#for name in lexer_names:
#  print name
