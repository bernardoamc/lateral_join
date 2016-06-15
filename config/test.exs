use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lateral_join, LateralJoin.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :lateral_join, LateralJoin.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "bernardo",
  password: "",
  database: "lateral_join_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
