# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :metathor, Metathor.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ERn5n24VRN8BiO0N63VQh/uJgcZtHa+YDSwhdAZdU3KBcH4wNh7BD2TobXxoVzGY",
  render_errors: [view: Metathor.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Metathor.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
