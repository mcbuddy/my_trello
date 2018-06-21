# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :my_trello,
  ecto_repos: [MyTrello.Repo]

# Configures the endpoint
config :my_trello, MyTrello.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nlkS3rnS5U4EmHoiLQwj6mlo2VadOH/fp0FzgZLAQiyvKHl8eMXfxrEVdjLxw1Mu",
  render_errors: [view: MyTrello.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MyTrello.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
