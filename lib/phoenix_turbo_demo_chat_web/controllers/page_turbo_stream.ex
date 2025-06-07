defmodule PhoenixTurboDemoChatWeb.PageTURBO_STREAM do
  use PhoenixTurboDemoChatWeb, :html

  def refresh(assigns) do
    ~H"""
    <.turbo_stream action="refresh" request_id={@request_id} />
    """
  end
end
