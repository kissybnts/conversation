defmodule Conversation.Repo.Migrations.CreateUserRole do
  use Ecto.Migration

  def change do
    create table(:user_roles) do
      add :name, :string, null: false

      timestamps()
    end

  end
end
