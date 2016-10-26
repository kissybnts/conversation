defmodule Conversation.Repo.Migrations.CreateUserLessonStatus do
  use Ecto.Migration

  def change do
    create table(:user_lesson_statuses) do
      add :percent, :integer, null: false, default: 0
      add :user_id, references(:users, on_delete: :nothing), null: false
      add :lesson_id, references(:lessons, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:user_lesson_statuses, [:user_id])
    create index(:user_lesson_statuses, [:lesson_id])

  end
end
