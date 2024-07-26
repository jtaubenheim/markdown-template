#!/bin/bash

# Define the frontmatter content
frontmatter="---
title: document_title
summary: your summary in quotes here
sidebar: markdown-sidebar
permalink: document_title.html
---"

# Check if a filename argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Get the filename from the command line argument
filename="$1"

# Check if the file already exists
if [ -e "$filename" ]; then
  echo "File '$filename' already exists."
  exit 1
fi

# Create the Markdown file with frontmatter
echo -e "$frontmatter" > "$filename"
echo "Created '$filename' with pre-loaded frontmatter."
