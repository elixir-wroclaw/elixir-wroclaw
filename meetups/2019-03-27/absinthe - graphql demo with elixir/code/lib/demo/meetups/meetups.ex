defmodule Demo.Meetups do
  @moduledoc """
  The Meetups context.
  """

  import Ecto.Query, warn: false
  alias Demo.Repo
  alias Demo.Meetups.{City, Meetup}

  def data() do
    Dataloader.Ecto.new(Repo, query: &query/2)
  end

  def query(queryable, _) do
    queryable
  end

  def list_cities do
    Repo.all(City)
  end

  def list_city_meetups(%City{} = city) do
    city
    |> Repo.preload([:meetups])
    |> Map.get(:meetups)
  end

  @spec list_meetup_speakers(Demo.Meetups.Meetup.t()) :: any()
  def list_meetup_speakers(%Meetup{} = meetup) do
    meetup
    |> Repo.preload([:speakers])
    |> Map.get(:speakers)
  end

  def get_by_id(meetup_id) do
    Repo.get(Meetup, meetup_id)
  end

  def get_city_by_id(city_id) do
    Repo.get(City, city_id)
  end

  def like(meetup) do
    meetup
    |> Meetup.changeset(%{likes: meetup.likes + 1})
    |> Repo.update
  end
end
