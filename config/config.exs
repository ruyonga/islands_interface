# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :islands_interface, IslandsInterface.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KdhzysiPtQbYwz2GXMto/jiPsqgtxFBbHGmKF1akg5J3tr2HGRfakoj+Ad8RAM1T",
  render_errors: [view: IslandsInterface.ErrorView, accepts: ~w(html json)],
  pubsub: [name: IslandsInterface.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
