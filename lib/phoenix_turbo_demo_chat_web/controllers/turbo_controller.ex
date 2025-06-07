defmodule PhoenixTurboDemoChatWeb.TurboController do
  import Plug.Conn, only: [assign: 3, get_req_header: 2]

  def fetch_turbo_headers(conn, _opts \\ []) do
    conn
    |> assign(:turbo_frame, get_request_header(conn, "turbo-frame"))
    |> assign(:turbo_request_id, get_request_header(conn, "x-turbo-request-id"))
  end

  def broadcast_turbo_stream_refresh(conn, topic, opts \\ []) do
    request_id = Keyword.get(opts, :turbo_request_id, conn.assigns.turbo_request_id)
    broadcast_turbo_stream(topic, PhoenixTurboDemoChatWeb.PageTURBO_STREAM, "refresh", request_id: request_id)
  end

  def broadcast_turbo_stream(topic, module, template, assign) do
    stream =
      Phoenix.Template.render_to_string(
        module,
        template,
        "turbo_stream",
        assign
      )

    PhoenixTurboDemoChatWeb.Endpoint.broadcast(topic, "message", %{data: stream})
  end

  defp get_request_header(conn, header) do
    conn
    |> get_req_header(header)
    |> List.first()
  end
end
