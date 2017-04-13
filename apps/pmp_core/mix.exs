defmodule PmpCore.Mixfile do
  use Mix.Project

  def project do
    [app: :pmp_core,
     version: "0.1.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [
      extra_applications: [
        :logger
      ],
      mod: {PmpCore.Application, []}
    ]
  end

  defp deps do
    [
      {:ecto, "~> 2.1"},
      {:postgrex, ">= 0.0.0"}
    ]
  end

  defp aliases do
    [
      "db:reset": ["ecto.drop --quiet", "ecto.create --quiet", "ecto.migrate"],
      "db:setup": ["ecto.drop --quiet", "ecto.create --quiet", "ecto.migrate", "run priv/repo/seeds.exs"]
    ]
  end

end
