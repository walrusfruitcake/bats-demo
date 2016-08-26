#!/usr/bin/env bats

SETUP_RESULT=""

setup() {
  setup_result="$(echo 2+2 | bc)"
  SETUP_RESULT=$setup_result
}

@test "bc adds numbers" {
  result="$(echo 1+2+3+5 | bc)"
  [ $result -eq 11 ]
}

@test "some test depending on setup result" {
  [ $SETUP_RESULT -eq 4 ]
}
