defmodule Websigil do
  def sigil_g(string, []) do
    string
      |> URI.encode()
      |> Req.get!()
      |> Map.get(:body)
  end
end
