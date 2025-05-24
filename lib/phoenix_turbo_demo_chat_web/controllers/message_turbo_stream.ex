defmodule PhoenixTurboDemoChatWeb.MessageTURBO_STREAM do
  use PhoenixTurboDemoChatWeb, :html
  import PhoenixTurboDemoChatWeb.MessageHTML, only: [message_form: 1]

  embed_templates "message_turbo_stream/*"
end
