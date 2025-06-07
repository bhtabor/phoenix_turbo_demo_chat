defmodule PhoenixTurboDemoChat.ChatFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixTurboDemoChat.Chat` context.
  """

  @doc """
  Generate a room.
  """
  def room_fixture(attrs \\ %{}) do
    {:ok, room} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> PhoenixTurboDemoChat.Chat.create_room()

    room
  end
end
