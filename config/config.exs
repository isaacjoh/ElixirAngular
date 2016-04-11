# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elixirAngular, ElixirAngular.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "gWOkehKGvgWxugadu6kYVaAWGnygCMx8gdq48yZRRAy+VQeoc/S9e195njfdCKgU",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: ElixirAngular.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :extwitter, :oauth, [
  consumer_key: "i8mNFJ1nG0fFixBuoKfeij4Za",
  consumer_secret: "IykFoG80sFQXx26TnV7OoM4Z6YM7uKQMhgjvuV4rLRNzC7StLs",
  access_token: "701240807022469121-BSC2LuDoHOPCMVa6IqJT3Fb2gkpqUBq",
  access_token_secret: "bZPEpcwUZa9JOGzHdDfrLwq9mz2g8rTveT3geFn56QrXW"
]
