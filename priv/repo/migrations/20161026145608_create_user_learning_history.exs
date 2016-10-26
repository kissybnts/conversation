defmodule Conversation.Repo.Migrations.CreateUserLearningHistory do
  use Ecto.Migration

  def change do
    create table(:user_learning_histories) do
      add :date, :date, null: false
      add :count, :integer, null: false, default: 0
      add :learned_time_sec, :integer, null: false
      add :user_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:user_learning_histories, [:user_id])

  end
end
