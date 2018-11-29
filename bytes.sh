# TODO: this doesn't work on Alpine (`read` has no -d option)
bytes_read() {
  local _c
  LANG=C IFS= read -r -d '' -n "$1" _c
  printf "%s" "${_c}"
}
