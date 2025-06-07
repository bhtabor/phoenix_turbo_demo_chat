import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :phoenix_turbo_demo_chat, PhoenixTurboDemoChat.Repo,
  database: Path.expand("../phoenix_turbo_demo_chat_test.db", __DIR__),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_turbo_demo_chat, PhoenixTurboDemoChatWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "VqvS0LR/qJEcogSrQgWtC5sENMzJ2QjIp/cT/HlxoymX1tUeDnfPI9oZgY10JDPJ",
  server: false

# In test we don't send emails
config :phoenix_turbo_demo_chat, PhoenixTurboDemoChat.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
