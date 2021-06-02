defmodule EventsWeb.Graphql.EventInfo do
  alias Events.Activities.Activity
  alias Events.ActivitiesGuests
  alias Events.Guests.Guest
  alias Events.Repo

  # ACTIVITIES_GUESTS
  import Ecto.Query

  def get_activity_guests(args) do
    from(
      e in ActivitiesGuests,
      join: a in Activity,
      on: e.event_id == a.id,
      join: g in Guest,
      on: e.guest_id == g.id,
      where: a.id == ^args,
      select: g
    )
    |> Repo.all()
  end

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
