defmodule PhoenixTurboDemoChat.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_turbo_demo_chat,
    adapter: Ecto.Adapters.SQLite3
end
