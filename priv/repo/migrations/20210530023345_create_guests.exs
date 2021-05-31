defmodule Events.Repo.Migrations.CreateGuests do
  use Ecto.Migration

  def change do
    create table(:guests) do
      add :email, :string
      add :name, :string

      timestamps()
    end

  end
end
