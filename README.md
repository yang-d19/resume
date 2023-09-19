# README

This repo stores tex files for my resume.

## Repo Structure

### software
- 230909: basic version of general software resume
- 230910: add a description about arXiv project in the EDUCATION section

### embedded
- 230915: init

### robotic
- 230919: modify title for intelligent car design competition in ACTIVITIES

### collect.sh

This shell script collects and renames the generated pdf files in different folders to one pdf folder.

## Tex Complier

I use VSCode and its extension [LaTeX-Workshop](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install) to write, generate and preview.

I use [texlive](https://www.tug.org/texlive/) for both Windows and Mac, as recommended by Latex-Workshop.

### Windows
In Windows System, I install texlive on WSL2 (Ubuntu20.04), so just follow the same instructions as Unix system.

**NOTE:**
> Notice that, to set the PATH environment variable for VS Code Remote Development, you usually have to edit .bash_profile or .profile instead of .bashrc. See the document for WSL and an issue for Remote SSH. 

Reference: https://github.com/James-Yu/LaTeX-Workshop/wiki/Install

### Mac

Follow the instructions on Mac provided by [texlive](https://www.tug.org/texlive/).