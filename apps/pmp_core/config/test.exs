use Mix.Config

config :pmp_core, PmpCore.Repo,
  adapter:  Ecto.Adapters.Postgres,
  database: "pmp_core_test",
  username: "postgres",
  password: "",
  hostname: "localhost",
  pool:     Ecto.Adapters.SQL.Sandbox
