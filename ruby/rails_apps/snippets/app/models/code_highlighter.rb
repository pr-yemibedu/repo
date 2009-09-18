class CodeHighlighter

  LANGUAGES = ['aconf', 'apache', 'apacheconf', 'bash', 'bbcode', 'bf', 'boo', 'brainfuck', 'c', 'c#', 'c++', 'cfg', 'cpp', 'csharp', 'css', 'css+django', 'css+erb', 'css+genshi', 'css+genshitext', 'css+jinja', 'css+myghty', 'css+php', 'css+ruby', 'css+smarty', 'delphi', 'diff', 'django', 'erb', 'genshi', 'genshitext', 'groff', 'html', 'html+django', 'html+erb', 'html+genshi', 'html+jinja', 'html+kid', 'html+myghty', 'html+php', 'html+ruby', 'html+smarty', 'ini', 'irb', 'irc', 'java', 'javascript', 'javascript+django', 'javascript+erb', 'javascript+genshi', 'javascript+genshitext', 'javascript+jinja', 'javascript+myghty', 'javascript+php', 'javascript+ruby', 'javascript+smarty', 'jinja', 'js', 'js+django', 'js+erb', 'js+genshi', 'js+genshitext', 'js+jinja', 'js+myghty', 'js+php', 'js+ruby', 'js+smarty', 'kid', 'latex', 'lua', 'make', 'makefile', 'man', 'mf', 'myghty', 'nroff', 'objectpascal', 'pas', 'pascal', 'perl', 'php', 'php3', 'php4', 'php5', 'pl', 'py', 'pycon', 'python', 'raw', 'rb', 'rbcon', 'rhtml', 'ruby', 'scheme', 'sh', 'smarty', 'sql', 'tex', 'text', 'vb.net', 'vbnet', 'xml', 'xml+django', 'xml+erb', 'xml+genshi', 'xml+jinja', 'xml+kid', 'xml+myghty', 'xml+php', 'xml+ruby', 'xml+smarty']

  def self.highlight(code, language)
    `echo #{escape_shell_arg(code)} | pygmentize -f html -l #{escape_shell_arg(language)}`
  end

  private
  def self.escape_shell_arg(str)
    "'%s'" % str.gsub("'","'\\\\''")
  end

end
