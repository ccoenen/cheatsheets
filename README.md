# Cheatsheet Collection

This is both a collection of cheatsheets and a way to write/compile cheatsheets in LaTeX.

## Features
- CI action for Github
- SVG-Images can be loaded directly
- Literature-links using bibtex
- Code-Highlighting using Pygments
- Relatively little setup-code in each cheatsheet
- Neat CC-license in each pdf

## Build Requirements

tex/latex environment (ubuntu)
sudo apt install texlive-lang-german raleway texlive-fonts-extra texlive-bibtex-extra biber

tex/latex environment (fedora), see <https://unix.stackexchange.com/a/199641>
sudo dnf install texlive-german texlive-collection-fontsextra texlive-raleway texlive-bibtex biber latexmk texlive-babel-german texlive-fontawesome texlive-scheme-full texlive-svg texlive-minted


for minted (code highlighting)
- add `--shell-escape` to your typesetting executable (in texworks, or in your compile script)
- install python
- install pygments
- make sure `pygmentize` is on your path. If not, either set up your path _OR_ put the path into your tex editor.

for svg
- install inkscape
- have inkscape on your path or add it in a batchfile (look at `compile-windows.bat` for an example)

continuous build on change:
`while inotifywait -e close_write *.tex lib/*.tex; do ./compile-linux.sh; done`



## Further Reading

https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop
https://tex.stackexchange.com/a/541385
https://github.com/James-Yu/LaTeX-Workshop/wiki/FAQ#how-to-pass--shell-escape-to-latexmk
