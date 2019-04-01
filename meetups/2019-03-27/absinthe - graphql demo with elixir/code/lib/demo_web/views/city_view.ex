defmodule DemoWeb.CityView do
  use DemoWeb, :view
  alias DemoWeb.CityView

  def render("index.json", %{cities: cities}) do
    render_many(cities, CityView, "city.json")
  end

  def render("city.json", %{city: city}) do
    city
  end
end
