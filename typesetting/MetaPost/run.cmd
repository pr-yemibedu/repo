rem test comment 2
@echo off
set drive=%~d0
rem Example of using MetaPost to create figures
rem The MetaPost system implements a picture-drawing language that outputs
rem PostScript commands instead of bitmaps like METAFONT
rem

set root=%~dp0
%drive%
pushd %root%

rem clean up
del /f /q *.pdf *.ps *.dvi *.log *.aux *.mpx *.1

rem create fig.1, which is a MetaPost output file, from fig.mp
mp fig.mp

rem create .dvi from our .tex file that references/uses the MetaPost figure
rem NOTE: If you view sample.dvi in a DVI viewer the figure will not be visible.
rem       You have to output a .ps file to view the figure with the dvips command
latex sample.tex

rem create .ps from .dvi
dvips sample.dvi

rem create .pdf from .ps
ps2pdf sample.ps

rem display PDF
sample.pdf

pause

popd
