defmodule EventsWeb.Graphql.Schema do
  alias EventsWeb.Graphql.Resolver

  use Absinthe.Schema

  import_types(EventsWeb.Graphql.Types)

  query do
    # field :activityGuests, list_of(:activity_guests) do
    #   arg(:id, :id)
    #   async(fn -> resolve(&Resolver.get_activity_guests/1) end)
    # end

    field :guests, list_of(:guests) do
      async(fn -> resolve(&Resolver.guests/2) end)
    end

    field :activities, list_of(:activities) do
      async(fn -> resolve(&Resolver.activities/2) end)
    end
  end

  mutation do
    field :create_guest, type: :guests do
      arg(:name, :string)
      arg(:email, :string)
      resolve(&Resolver.create_guest/2)
    end

    field :create_activity, type: :activities do
      arg(:name, :string)
      arg(:activity_date, :string)
      resolve(&Resolver.create_activity/2)
    end
  end
end
