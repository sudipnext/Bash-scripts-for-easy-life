#!/bin/bash

# bash script to merge/combine two or more pdfs into one pdf
# dependencies = bash, poppler/poppler-utils

help_text() {
  cat <<EOP
  pdfmerger
  A bash script to merge two or more pdfs.

  Usage:
	${0##*/} -i <1.pdf> ... <n.pdf> -o <out.pdf>

  Options:
    -h, --help  show usage information
    -i          input files; at least two pdf files required
    -o          output filename
EOP
}

die() {
	err "$*"
	exit 1
}

# display an error message to stderr (in red)
err() {
	printf "\033[1;31m%s\033[0m\n" "$*" >&2
}

# checks if dependencies are present
dep_ch() {
	for dep; do
		if ! command -v "$dep" >/dev/null ; then
			err "Command \"$dep\" not found. Please install poppler-utils or poppler according to the linux sysem you use."
			die
		fi
	done
}

merge_pdfs() {
  inputfilescount=$(wc -w <<< "$inputfiles")
  outputfilecount=$(wc -w <<< "$outputfile")
  if [[ "$inputfilescount" -gt 1 ]] && [[ "$outputfilecount" -eq 1 ]]; then
    pdfunite $inputfiles "$outputfile"
  else
    err "Invalid argument inputs!"
  fi
}

dep_ch "pdfunite"
inputfiles=""

if [[ $# -gt 4 ]]; then
  while [[ $# -gt 0 ]]
    do
      key="$1"
      case $key in
        -i)
          nextArg="$2"
          while ! [[ "$nextArg" =~ -.* ]] && [[ $# -gt 1 ]]; do
            case $nextArg in
              *)
                if [[ -f $nextArg ]]; then
                  inputfiles="$inputfiles $nextArg"
                else
                  err "File $nextArg doesn't exist."
                  die
                fi
              ;;
            esac
            if ! [[ "$2" =~ -.* ]]; then
              shift
              nextArg="$2"
            else
              shift
              break
            fi
          done
        ;;
        -o)
          nextArg="$2"
          if ! [[ "$nextArg" =~ -.* ]]; then
              outputfile="$nextArg"
          fi
        ;;
        -h)
          help_text
        ;;
    esac
    shift
  done
elif [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
  help_text
  exit 0
else
  err "Invalid or incomplete arguments!"
  help_text
  exit 1
fi


merge_pdfs
