defmodule Events.Guests.Guest do
  use Ecto.Schema
  import Ecto.Changeset

  schema "guests" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(guest, attrs) do
    guest
    |> cast(attrs, [:email, :name])
    |> validate_required([:email, :name])
  end
end
