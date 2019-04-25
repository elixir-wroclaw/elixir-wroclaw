defmodule DemoWeb.Router do
  use DemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/rest" do
    pipe_through :api

    resources "/cities", DemoWeb.CityController, except: [:new, :edit, :delete, :show]
  end
  scope "/" do
    pipe_through :api

    forward("/api", Absinthe.Plug, schema: DemoWeb.Schema)

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      schema: DemoWeb.Schema,
      socket: DemoWeb.UserSocket
    )
  end
end
