defmodule Demo.Meetups.City do
  use Ecto.Schema
  alias Demo.Meetups.Meetup
  import Ecto.Changeset

  schema "cities" do
    field(:name, :string)
    has_many(:meetups, Meetup)

    timestamps()
  end

  @doc false
  def changeset(city, attrs) do
    city
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
