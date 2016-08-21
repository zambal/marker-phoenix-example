# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :marker_phoenix_example, MarkerPhoenixExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fVUYTO3R735ZfewcR9nuz58p0UQwbQVqVwNypaYOgaKJj+kePrpVX+G2n74OMjRL",
  render_errors: [view: MarkerPhoenixExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MarkerPhoenixExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
