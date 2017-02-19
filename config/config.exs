# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pedal,
  ecto_repos: [Pedal.Repo]

# Configures the endpoint
config :pedal, Pedal.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/A/ThS5sAqrDfxkKO8WQCRpHxbf09KM3zwGQZ917Adaqss5SLowezF+Xegrt3HJz",
  render_errors: [view: Pedal.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pedal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
