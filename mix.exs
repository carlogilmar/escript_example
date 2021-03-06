defmodule EscriptDemo.Mixfile do
  use Mix.Project

  def project do
    [
      app: :learning_manager,
      version: "1.1.0",
      elixir: "~> 1.5",
      escript: [main_module: Etoile.Cli],
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Etoile.Application, []},
      extra_applications: [:logger, :runtime_tools, :calendar]
    ]
  end

  defp deps do
    [
      {:tzdata, "~> 0.1.7"},
      {:calendar, "~> 0.17.2"},
      {:bunt, "~> 0.1.0"},
      {:httpoison, "~> 1.5.0"},
      {:poison, "~> 3.1"},
      {:elixir_uuid, "~> 1.2"},
      {:ex_gram, "~> 0.5.0-rc6"}
    ]
  end
end
