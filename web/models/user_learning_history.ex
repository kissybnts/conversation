defmodule Conversation.UserLearningHistory do
  use Conversation.Web, :model

  schema "user_learning_histories" do
    field :date, Ecto.Date
    field :count, :integer
    field :learned_time_sec, :integer
    belongs_to :user, Conversation.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:date, :count, :learned_time_sec])
    |> validate_required([:date, :count, :learned_time_sec])
  end
end
