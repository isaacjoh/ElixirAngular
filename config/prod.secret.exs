use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :elixirAngular, ElixirAngular.Endpoint,
  secret_key_base: "XXNRF1tFz77gtdz9hSJH6KW4BYql6a0bhVmC++VuJl4HOcFdbBs9OR+tXlLpeypN"

# Configure your database
config :elixirAngular, ElixirAngular.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elixirangular_prod",
  pool_size: 20
