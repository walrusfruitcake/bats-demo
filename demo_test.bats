#!/usr/bin/env bats

@test "bc adds numbers" {
  result="$(echo 1+2+3+5 | bc)"
  [ $result -eq 11 ]
}
