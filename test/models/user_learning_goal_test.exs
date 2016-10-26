defmodule Conversation.UserLearningGoalTest do
  use Conversation.ModelCase

  alias Conversation.UserLearningGoal

  @valid_attrs %{goal_count_for_date: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UserLearningGoal.changeset(%UserLearningGoal{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UserLearningGoal.changeset(%UserLearningGoal{}, @invalid_attrs)
    refute changeset.valid?
  end
end
