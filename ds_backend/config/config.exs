# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ds_backend,
  ecto_repos: [DsBackend.Repo]

# Configures the endpoint
config :ds_backend, DsBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5EzoiYyzI7h5xhhGqLSPFa6k5HJTByeG/Hi8zQrDRNOdprToyVv3mfyD1OxTxV2u",
  render_errors: [view: DsBackendWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DsBackend.PubSub,
  live_view: [signing_salt: "B312Og7l"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
