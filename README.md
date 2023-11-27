# websigil
[![hex.pm version](https://img.shields.io/hexpm/v/websigil.svg)](https://hex.pm/packages/websigil)
[![hex.pm](https://img.shields.io/hexpm/l/websigil.svg)](https://github.com/ma2gedev/websigil/blob/master/LICENSE)

fetch response by sigil!

## Usage

```elixir
iex(1)> Mix.install [{:websigil, "~> 0.1.0"}]
:ok
iex(2)> import Websigil
Websigil
iex(3)> ~g{https://httpbin.org/user-agent}
%{"user-agent" => "req/0.4.5"}
iex(4)> ~g{https://httpbin.org/ip}
%{"origin" => "xxx.xxx.xxx.xxx"}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `websigil` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:websigil, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/websigil>.
