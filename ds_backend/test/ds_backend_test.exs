defmodule DsBackendTest do
  use ExUnit.Case
  doctest DsBackend

  test "greets the world" do
    assert DsBackend.hello() == :world
  end
end
