defmodule PhoenixTurboDemoChatWeb.PageController do
  use PhoenixTurboDemoChatWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
