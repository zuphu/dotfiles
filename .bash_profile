alias fuck='sudo $(history -p \!\!)'

notes() {
  if [ ! -z "$1" ]; then
    # Using the "$@" here will take all parameters passed into
    # this function so we can place everything into our file.
    echo "$@" >> "$HOME/notes.md"
  else
    # If no arguments were passed we will take stdin and place
    # it into our notes instead.
    cat - >> "$HOME/notes.md"
  fi
}
