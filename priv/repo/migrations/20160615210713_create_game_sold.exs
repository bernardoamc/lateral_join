defmodule LateralJoin.Repo.Migrations.CreateGameSold do
  use Ecto.Migration

  def change do
    create table(:games_sold) do
      add :sold_on, :date
      add :game_id, references(:games, on_delete: :nothing)

      timestamps
    end

    create index(:games_sold, [:game_id])
  end
end
