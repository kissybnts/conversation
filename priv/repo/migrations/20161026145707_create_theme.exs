defmodule Conversation.Repo.Migrations.CreateTheme do
  use Ecto.Migration

  def change do
    create table(:themes) do
      add :name, :string, null: false

      timestamps()
    end

  end
end
