defmodule TodoManagerCliTest do
  use ExUnit.Case
  doctest TodoManagerCli

  test "greets the world" do
    assert TodoManagerCli.hello() == :world
  end
end
