defmodule Conversation.UserLearningGoal do
  use Conversation.Web, :model

  schema "user_learning_goals" do
    field :goal_count_for_date, :integer
    belongs_to :user, Conversation.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:goal_count_for_date])
    |> validate_required([:goal_count_for_date])
  end
end
