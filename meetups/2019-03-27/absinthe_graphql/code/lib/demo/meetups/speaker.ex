defmodule Demo.Meetups.Speaker do
  use Ecto.Schema
  alias Demo.Meetups.Meetup
  import Ecto.Changeset

  schema "speakers" do
    field(:name, :string)
    field(:title, :string)

    belongs_to(:meetup, Meetup)

    timestamps()
  end

  @doc false
  def changeset(meetup, attrs) do
    meetup
    |> cast(attrs, [:name, :title])
    |> validate_required([:name, :title])
  end
end
