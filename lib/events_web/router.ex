defmodule EventsWeb.Router do
  use EventsWeb, :router

  # essas duas linhas abaixo são necessárias para
  # o GraphQL entender os nossos schemas
  forward "/graph", Absinthe.Plug, schema: EventsWeb.Graphql.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL, schema: EventsWeb.Graphql.Schema
end
