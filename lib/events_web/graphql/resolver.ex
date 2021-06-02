defmodule EventsWeb.Graphql.Resolver do
  alias EventsWeb.Graphql.EventInfo

  def guests(_args, _info) do
    {:ok, EventInfo.get_guests()}
  end

  # adicione  essa função
  def create_guest(args, _info) do
    with {:ok, guest} <- EventInfo.create_guest(args) do
      {:ok, guest}
    else
      {:error, _reason} -> {:error, "Fail to create a new guest!!!"}
    end
  end
  # ACTIVITIES
  def activities(_args, _info) do
    {:ok, EventInfo.get_activities()}
  end

  def create_activity(args, _info) do
    with {:ok, activity} <- EventInfo.create_activity(args) do
      {:ok, activity}
    else
      {:error, _reason} -> {:error, "Fail to create new activity!!!"}
    end
  end
end
