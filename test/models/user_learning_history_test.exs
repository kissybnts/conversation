defmodule Conversation.UserLearningHistoryTest do
  use Conversation.ModelCase

  alias Conversation.UserLearningHistory

  @valid_attrs %{count: 42, date: %{day: 17, month: 4, year: 2010}, learned_time_sec: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UserLearningHistory.changeset(%UserLearningHistory{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UserLearningHistory.changeset(%UserLearningHistory{}, @invalid_attrs)
    refute changeset.valid?
  end
end
