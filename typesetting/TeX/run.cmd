@echo off
set drive=%~d0
rem Example of using TeX system (e.g. MiKTeX is a TeX implementation for win32)
rem

set root=%~dp0
%drive%
pushd %root%

rem clean up
del /f /q *.pdf *.ps *.dvi *.log *.aux

rem create .dvi from .tex
latex sample.tex

rem create .ps from .dvi
dvips sample.dvi

rem create .pdf from .tex
pdflatex sample.tex

pause

popd
