insertHead() {
  printf '%s\n' H 1i "$1" . w | ed -s "$2"
}

insertHead "$TEXT" "$FILE"
