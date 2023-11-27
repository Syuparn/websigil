import Websigil

defmodule WebsigilTest do
  use ExUnit.Case
  doctest Websigil

  test "sigil returns response body" do
    assert ~g{https://httpbin.org/user-agent} == %{"user-agent" => "req/0.4.5"}
  end
end
