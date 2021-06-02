defmodule Events.Repo.Migrations.CreateActivities do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :activity_date, :string
      add :name, :string

      timestamps()
    end

  end
end
