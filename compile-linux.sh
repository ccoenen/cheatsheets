#!/bin/env bash
latexmk -output-directory=build -pdflatex="pdflatex --shell-escape %O %S" -pdf "${1}"
