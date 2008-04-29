texify pstring-doc.tex
dvips pstring-doc.dvi -o pstring-doc.ps
ps2pdf pstring-doc.ps
del pstring.zip 
7za -tzip a pstring.zip pstring.sty pstring-doc.pdf pstring-doc.tex pstring-doc.pre pgfmanual-en-macros.tex
pause