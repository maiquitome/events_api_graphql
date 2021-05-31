# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :events,
  ecto_repos: [Events.Repo]

# Configures the endpoint
config :events, EventsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AJbLjD5LBa140WzNX3BzYMGw/1v7MujVtB5Kp4ormqDaLRR9RxwXyupyQovtJTjA",
  render_errors: [view: EventsWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Events.PubSub,
  live_view: [signing_salt: "Iln2gnwc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"