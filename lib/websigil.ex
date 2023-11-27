defmodule Websigil do
  @moduledoc """
  A custom sigil that gets HTTP response from URL string
  """

  @doc """
  Get HTTP response from URL string

  ## Example
    ~g{https://httpbin.org/user-agent}
  """
  def sigil_g(string, []) do
    string
      |> URI.encode()
      |> Req.get!()
      |> Map.get(:body)
  end
end
