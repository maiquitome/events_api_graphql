defmodule EventsWeb.Graphql.EventInfo do
  alias Events.Activities.Activity
  alias Events.Guests.Guest
  alias Events.Repo

  # GUESTS
  def get_guests, do: Repo.all(Guest)

  def create_guest(args) do
    %Guest{}
    |> Guest.changeset(args)
    |> Repo.insert()
  end
  # ACTIVITIES
  def get_activities, do: Repo.all(Activity)

  def create_activity(args) do
    %Activity{}
    |> Activity.changeset(args)
    |> Repo.insert()
  end
end
