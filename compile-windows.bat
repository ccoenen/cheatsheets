setlocal
PATH="C:\Program Files\Inkscape\bin\";%PATH%
latexmk -output-directory=build -pdflatex="pdflatex --shell-escape %%O %%S" -pdf %1
