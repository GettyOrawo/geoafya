# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :geoafya,
  ecto_repos: [Geoafya.Repo]

# Configures the endpoint
config :geoafya, GeoafyaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "w2bwkeqCYnLdx4rwPsbM+gtKh+2+mPrDc1RTUqVj35ZOTb9PxrtkypJpYz4RSyEP",
  render_errors: [view: GeoafyaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Geoafya.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
