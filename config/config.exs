# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :conversation,
  ecto_repos: [Conversation.Repo]

# Configures the endpoint
config :conversation, Conversation.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "26J+23AHZJXOxFDYe+i4y7Mwgj7TKOb/ZcFGYm/BT+OBQzP4t5sd90DvKnY/xuMo",
  render_errors: [view: Conversation.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Conversation.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
