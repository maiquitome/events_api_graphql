defmodule Events.Activities.Activity do
  use Ecto.Schema
  import Ecto.Changeset

  schema "activities" do
    field :activity_date, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(activity, attrs) do
    activity
    |> cast(attrs, [:activity_date, :name])
    |> validate_required([:activity_date, :name])
  end
end
