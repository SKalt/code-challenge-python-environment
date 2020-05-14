#!/usr/bin/env bash
repo_root="$(realpath "${BASH_SOURCE%/*}/..")"
test_dir="$repo_root/tests"
pythonpath="${PYTHONPATH:-}:$repo_root/src"

function usage() {
  echo "test.sh: run tests in $test_dir"
  echo "USAGE: $0 [-h|--help][-w|--watch]"
  echo "Args:"
  echo "  -h|--help: print this help message and exit"
  echo "  -w|--watch: re-run your tests when you save a source or test file"
}

function main() {
  case "$1" in
  -h | --help) usage && exit ;;
  -w | --watch) PYTHONPATH=$pythonpath pytest-watch "$test_dir" ;;
  *) PYTHONPATH=$pythonpath pytest "$test_dir" ;;
  esac
}

main "$@"
