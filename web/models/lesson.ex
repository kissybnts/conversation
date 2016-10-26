defmodule Conversation.Lesson do
  use Conversation.Web, :model

  schema "lessons" do
    field :name, :string
    field :count, :integer
    belongs_to :theme, Conversation.Theme

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :count])
    |> validate_required([:name, :count])
  end
end
