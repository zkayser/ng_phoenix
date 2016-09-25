# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ng_phoenix2,
  ecto_repos: [NgPhoenix2.Repo]

# Configures the endpoint
config :ng_phoenix2, NgPhoenix2.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LFWScbYgCMKLF4K4PVAjelYJEk4UU48TwAIRbMpM2Y5pAhUUUOnuzAA01HAUk1ie",
  render_errors: [view: NgPhoenix2.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NgPhoenix2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
