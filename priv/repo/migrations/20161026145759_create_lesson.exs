defmodule Conversation.Repo.Migrations.CreateLesson do
  use Ecto.Migration

  def change do
    create table(:lessons) do
      add :name, :string, null: false
      add :count, :integer, null: false, default: 0
      add :theme_id, references(:themes, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:lessons, [:theme_id])

  end
end
