defmodule DemoWeb.CityController do
  use DemoWeb, :controller
  use Absinthe.Phoenix.Controller, schema: DemoWeb.Schema

  action_fallback DemoWeb.FallbackController

  @graphql """
  query {
    cities {
      id
      name
    }
  }
  """
  def index(conn, %{data: %{"cities" => cities}}) do
    render(conn, "index.json", cities: cities)
  end

end
