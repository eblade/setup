# this goes in your .bashrc
#function readmarkdown() {
#  TMPFILE=`mktemp`.pdf
#  pandoc "$@" -o $TMPFILE
#  evince $TMPFILE
#  rm $TMPFILE
#}

#  OR, for fancy formatting you can use --listings (this requires the latex-xcolor package)
function md() {
  TMPFILE=`mktemp`.pdf
  pandoc "$@" --listings -H ~/.bashrc.d/listings-setup.tex -o $TMPFILE
  evince $TMPFILE
  rm $TMPFILE
}
