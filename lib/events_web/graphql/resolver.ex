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
end
