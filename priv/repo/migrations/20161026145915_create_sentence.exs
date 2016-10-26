defmodule Conversation.Repo.Migrations.CreateSentence do
  use Ecto.Migration

  def change do
    create table(:sentences) do
      add :original, :text, null: false
      add :translated, :text, null: false
      add :lesson_id, references(:lessons, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:sentences, [:lesson_id])

  end
end
