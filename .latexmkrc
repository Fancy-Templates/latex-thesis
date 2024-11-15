@default_files = ('thesis.tex');            # `latexmk` should compile the thesis
$pdf_mode = 1;                              # use pdflatex
$out_dir = './';                            # all the outputs will appear in this directory
$postscript_mode = 0;                       # don't use postscript
$dvi_mode = 0;                              # don't use dvi
$pdflatex = 'pdflatex %O -shell-escape %S'; # enable shell escape