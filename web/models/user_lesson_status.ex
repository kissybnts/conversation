defmodule Conversation.UserLessonStatus do
  use Conversation.Web, :model

  schema "user_lesson_statuses" do
    field :percent, :integer
    belongs_to :user, Conversation.User
    belongs_to :lesson, Conversation.Lesson

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:percent])
    |> validate_required([:percent])
  end
end
