setlocal
PATH="C:\Program Files\Inkscape\bin\";%PATH%

::latex --shell-escape css-basics-de.tex
::biber css-basics-de
::latex --shell-escape css-basics-de.tex
::pdflatex --shell-escape css-basics-de.tex

latexmk -output-directory=build -pdflatex="pdflatex --shell-escape %%O %%S" -pdf %1
