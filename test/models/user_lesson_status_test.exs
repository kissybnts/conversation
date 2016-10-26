defmodule Conversation.UserLessonStatusTest do
  use Conversation.ModelCase

  alias Conversation.UserLessonStatus

  @valid_attrs %{percent: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UserLessonStatus.changeset(%UserLessonStatus{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UserLessonStatus.changeset(%UserLessonStatus{}, @invalid_attrs)
    refute changeset.valid?
  end
end
