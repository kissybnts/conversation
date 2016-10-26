defmodule Conversation.Sentence do
  use Conversation.Web, :model

  schema "sentences" do
    field :original, :string
    field :translated, :string
    belongs_to :lesson, Conversation.Lesson

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:original, :translated])
    |> validate_required([:original, :translated])
  end
end
