defmodule Conversation.SentenceTest do
  use Conversation.ModelCase

  alias Conversation.Sentence

  @valid_attrs %{original: "some content", translated: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Sentence.changeset(%Sentence{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Sentence.changeset(%Sentence{}, @invalid_attrs)
    refute changeset.valid?
  end
end
