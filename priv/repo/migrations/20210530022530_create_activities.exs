defmodule Events.Repo.Migrations.CreateActivities do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :date_event, :date
      add :name, :string

      timestamps()
    end

  end
end
