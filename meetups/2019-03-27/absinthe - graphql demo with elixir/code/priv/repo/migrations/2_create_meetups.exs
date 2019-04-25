defmodule Demo.Repo.Migrations.CreateMeetups do
  use Ecto.Migration

  def change do
    create table(:meetups) do
      add :name, :string
      add :description, :string
      add :location, :string
      add :likes, :integer
      add :city_id, references(:cities, on_delete: :nothing)

      timestamps()
    end

    create index(:meetups, [:city_id])
  end
end
