defmodule Conversation.Repo.Migrations.CreateUserSentenceStatus do
  use Ecto.Migration

  def change do
    create table(:user_sentence_statuses) do
      add :status, :integer, null: false, default: 0
      add :user_id, references(:users, on_delete: :nothing), null: false
      add :sentence_id, references(:sentences, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:user_sentence_statuses, [:user_id])
    create index(:user_sentence_statuses, [:sentence_id])

  end
end
