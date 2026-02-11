#!/bin/bash

{
find . \
  -type d \( \
    -name ".git" -o \
    -name ".venv" -o \
    -name "__pycache__" -o \
    -name "AirBnB" -o \
    -name ".obsidian" \
  \) -prune -o \
  \( \
    -type f \( \
      -name "*.ipynb" -o \
      -name "*.py" -o \
      -name "*.md" -o \
      -name "manage.py" -o \
      -name "requirements.txt" \
    \) -o \
    -path "./.venv/pyvenv.cfg" -o \
    -path "./Datos/covidtracking/*.csv" \
  \) -print
  
find . \( \
    -path "./.venv/pyvenv.cfg" \
  \) -print
 } | sort -fu

