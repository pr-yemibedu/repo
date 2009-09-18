@echo off
set drive=%~d0
rem Example of using Texinfo
rem

set root=%~dp0
%drive%
pushd %root%

rem clean up
del /f /q *.pdf *.ps *.dvi *.log *.aux *.fn *.info *.pg *.vr *.tmp *.ky *.cp *.cps *.html *.toc *.tp
rmdir /s /q sample

rem create .info file from .texinfo
makeinfo sample.texinfo

rem 
makeinfo --html sample.texinfo

rem create .texinfo from .dvi
texi2dvi sample.texinfo

pause

popd
