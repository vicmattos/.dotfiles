
function brewexists() {
  brew ls --versions $1 >/dev/null 2>&1
}