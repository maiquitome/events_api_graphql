defmodule EventsWeb.Graphql.EventInfo do
  alias Events.Guests.Guest
  alias Events.Repo

  # GUESTS
  def get_guests, do: Repo.all(Guest)

  def create_guest(args) do
    %Guest{}
    |> Guest.changeset(args)
    |> Repo.insert()
  end
end
