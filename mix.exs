defmodule PokedexSchema.MixProject do
  use Mix.Project

  def project do
    [
      app: :pokedex_schema,
      version: "0.2.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:jason, "~> 1.4"}
    ]
  end
end
