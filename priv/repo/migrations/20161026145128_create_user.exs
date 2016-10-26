defmodule Conversation.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :password, :string, null: false
      add :user_roll_id, references(:user_roles, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:users, [:user_roll_id])
    create index(:users, [:name], unique: true)

  end
end
