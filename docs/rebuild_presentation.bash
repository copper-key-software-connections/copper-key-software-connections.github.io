#!/bin/bash

file_path="${1}"
file_directory=$(dirname "${file_path}")
filename=$(basename -- "$file_path")


#TODO: Copy from external obsidian vault (main editor) then render 
cd "${file_directory}"
ls "${filename}.md" | entr -rsc "quarto render '${filename}.md'"
