# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_getting_started,
  ecto_repos: [PhoenixGettingStarted.Repo]

# Configures the endpoint
config :phoenix_getting_started, PhoenixGettingStartedWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9wO4oqjUtoBnijclIW9/iYrHtGJfLaQwQt9m4j6f+gCzCjDEU19dgbizlU/Xcgbk",
  render_errors: [view: PhoenixGettingStartedWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixGettingStarted.PubSub,
  live_view: [signing_salt: "FgjcXPOp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
