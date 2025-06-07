defmodule PhoenixTurboDemoChatWeb.ErrorJSONTest do
  use PhoenixTurboDemoChatWeb.ConnCase, async: true

  test "renders 404" do
    assert PhoenixTurboDemoChatWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert PhoenixTurboDemoChatWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
