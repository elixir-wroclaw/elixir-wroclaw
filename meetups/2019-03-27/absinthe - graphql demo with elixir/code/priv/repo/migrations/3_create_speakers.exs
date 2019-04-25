defmodule Demo.Repo.Migrations.CreateSpeakers do
  use Ecto.Migration

  def change do
    create table(:speakers) do
      add :name, :string
      add :title, :string
      add :meetup_id, references(:meetups, on_delete: :nothing)

      timestamps()
    end

    create index(:speakers, [:meetup_id])
  end
end
