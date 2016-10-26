defmodule Conversation.User do
  use Conversation.Web, :model

  schema "users" do
    field :name, :string
    field :password, :string
    belongs_to :user_roll, Conversation.UserRoll

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :password])
    |> validate_required([:name, :password])
  end
end
