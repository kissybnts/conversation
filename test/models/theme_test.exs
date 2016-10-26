defmodule Conversation.ThemeTest do
  use Conversation.ModelCase

  alias Conversation.Theme

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Theme.changeset(%Theme{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Theme.changeset(%Theme{}, @invalid_attrs)
    refute changeset.valid?
  end
end
