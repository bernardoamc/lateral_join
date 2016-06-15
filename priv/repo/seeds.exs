# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LateralJoin.Repo.insert!(%LateralJoin.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias LateralJoin.Repo
alias LateralJoin.Game
alias Ecto.Date

for category <- ["Metal Slug Defense", "Project Druid", "Chroma Squad", "7 days to die"] do
  if !Repo.get_by(Game, name: category) do
    game = Repo.insert!(%Game{name: category})

    {:ok, date} = Date.cast("2016-06-01")
    Repo.insert!(
      Ecto.build_assoc(game, :games_sold, sold_on: date)
    )

    {:ok, date} = Date.cast("2016-06-06")
    Repo.insert!(
      Ecto.build_assoc(game, :games_sold, sold_on: date)
    )

    {:ok, date} = Date.cast("2016-06-15")
    Repo.insert!(
      Ecto.build_assoc(game, :games_sold, sold_on: date)
    )
  end
end
