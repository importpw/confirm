import "import.pw/prompt@0.0.1"

confirm() {
  local yn=
  prompt yn "$1"
  [ "$yn" = "y" ] || [ "$yn" = "yes" ]
}
