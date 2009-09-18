All subdirectories deal with typesetting

TeX
- macro language.
- Directory contains Tex & LaTeX examples
- references & resources: http://www.tug.org

MetaPost
- The MetaPost system implements a picture-drawing language that outputs
  PostScript commands instead of bitmaps like METAFONT

Texinfo
- a documentation system that uses a single source file to produce both
  online information and printed output. This means that instead of writing
  two different documents, one for the online information and the other for a
  printed work, you need write only one document.

-----------------------------------------------------------------------------
Commands - lists the command, the input file type, and the command output
           file type

Command                Input                           Output
-------                -----                           ------ 
latex                  .tex                            .dvi
dvips                  .dvi                            .ps
pdflatex               .tex                            .pdf
ps2pdf                 .ps                             .pdf
mp                     .mp                             (figures in PostScript)
makeinfo               .texinfo, .texi                 (info file)
makeinfo --html        .texinfo, .texi                 (directory of html files)
texi2dvi               .texinfo, .texi                 .dvi
texi2dvi --pdf         .texinfo, .texi                 .pdf
