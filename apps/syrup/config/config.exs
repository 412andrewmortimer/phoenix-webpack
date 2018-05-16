# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :syrup,
  namespace: Syrup

# Configures the endpoint
config :syrup, SyrupWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZYazHr+C//q4/wXfcJhvHoOt0X9sKiqHKCr+Ibxl/cwYsZa86g/p3v+r+EYwfVJP",
  render_errors: [view: SyrupWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Syrup.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
