use Mix.Config

config :pmp_core, PmpCore.Repo,
  adapter:  Ecto.Adapters.Postgres,
  database: "pmp_core_dev",
  username: "postgres",
  password: "",
  hostname: "localhost"
