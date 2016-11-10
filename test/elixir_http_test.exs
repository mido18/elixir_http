defmodule ElixirHttpTest do
  use ExUnit.Case
  doctest ElixirHttp

  test "init included" do
    assert  Keyword.has_key?(ElixirHttp.Router.__info__(:functions), :init) == true
  end

  test "init args" do
    assert  ElixirHttp.Router.__info__(:functions)[:init] == 1
  end

end
