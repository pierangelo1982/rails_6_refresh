defmodule EvenOddTest do
  use ExUnit.Case
  doctest EvenOdd

  test "greets the world" do
    assert EvenOdd.hello() == :world
  end
end
