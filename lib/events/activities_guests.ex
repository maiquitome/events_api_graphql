defmodule Events.ActivitiesGuests do
  use Ecto.Schema
  import Ecto.Changeset

  schema "activities_guests" do
    field :activity_id, :id
    field :guest_id, :id

    timestamps()
  end

  @doc false
  def changeset(activities_guests, attrs) do
    activities_guests
    |> cast(attrs, [])
    |> validate_required([])
  end
end
