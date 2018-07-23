import "import.pw/prompt@0.0.1"

confirm() {
  local yn=
  prompt yn "$1"
  [ "$yn" = "y" ] || [ "$yn" = "yes" ]
}

confirm_exec() {
  local message="$1"
  shift
  confirm "${message//\$\*/$*}" && "$@"
}
