defmodule Conversation.Repo.Migrations.CreateUserLearningGoal do
  use Ecto.Migration

  def change do
    create table(:user_learning_goals) do
      add :goal_count_for_date, :integer, null: false, default: 10
      add :user_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:user_learning_goals, [:user_id])

  end
end
