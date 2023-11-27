defmodule Websigil.MixProject do
  use Mix.Project

  def project do
    [
      app: :websigil,
      version: "0.1.0",
      elixir: "~> 1.14",
      name: "WebSigil",
      description: "A custom sigil that gets HTTP response from URL string",
      package: [
        maintainers: ["syuparn"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/Syuparn/websigil"}
      ],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:req, "~> 0.4.5"},
      {:ex_doc, "~> 0.30.9"},
      {:earmark, "~> 1.4"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
