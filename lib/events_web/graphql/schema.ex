defmodule EventsWeb.Graphql.Schema do
  alias EventsWeb.Graphql.Resolver

  use Absinthe.Schema

  import_types(EventsWeb.Graphql.Types)

  query do
    field :guests, list_of(:guests) do
      async(fn -> resolve(&Resolver.guests/2) end)
    end
  end

  mutation do
    field :create_guest, type: :guests do
      arg(:name, :string)
      arg(:email, :string)
      resolve(&Resolver.create_guest/2)
    end
  end
end
