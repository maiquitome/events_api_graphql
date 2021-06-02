defmodule EventsWeb.Graphql.Types do
  use Absinthe.Schema.Notation

  object :guests do
    field :id, :id
    field :name, :string
    field :email, :string
  end

  object :activities do
    field :id, :id
    field :name, :string
    field :activity_date, :string
  end

  # object :activity_guests do
  #   field :id, :id
  #   field :name, :string
  # end
end
