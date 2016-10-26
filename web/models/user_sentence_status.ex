defmodule Conversation.UserSentenceStatus do
  use Conversation.Web, :model

  schema "user_sentence_statuses" do
    field :status, :integer
    belongs_to :user, Conversation.User
    belongs_to :sentence, Conversation.Sentence

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:status])
    |> validate_required([:status])
  end
end
