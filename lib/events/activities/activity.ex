defmodule Events.Activities.Activity do
  use Ecto.Schema
  import Ecto.Changeset

  schema "activities" do
    field :date_event, :date
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(activity, attrs) do
    activity
    |> cast(attrs, [:date_event, :name])
    |> validate_required([:date_event, :name])
  end
end
