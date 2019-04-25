defmodule Demo.Meetups.Meetup do
  use Ecto.Schema
  alias Demo.Meetups.{City, Speaker}
  import Ecto.Changeset

  schema "meetups" do
    field(:name, :string)
    field(:description, :string)
    field(:location, :string)
    field(:likes, :integer)

    has_many(:speakers, Speaker)
    belongs_to(:city, City)

    timestamps()
  end

  @doc false
  def changeset(meetup, attrs) do
    meetup
    |> cast(attrs, [:name, :description, :location, :likes])
    |> validate_required([:name, :description, :location, :likes])
  end
end
