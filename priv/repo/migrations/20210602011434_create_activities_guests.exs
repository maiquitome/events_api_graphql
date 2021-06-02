defmodule Events.Repo.Migrations.CreateActivitiesGuests do
  use Ecto.Migration

  def change do
    create table(:activities_guests) do
      add :activity_id, references(:activities, on_delete: :nothing)
      add :guest_id, references(:guests, on_delete: :nothing)

      timestamps()
    end

    create index(:activities_guests, [:activity_id])
    create index(:activities_guests, [:guest_id])
  end
end
