# LateralJoin

*Small `Phoenix` app to test lateral joins with `Ecto`.*

Remember to set your local `ecto` in the `mix.exs` file:

`{:ecto, path: "/my/ecto/path", override: true}`

* Run the seeds:

`mix run priv/repo/seeds.exs`

* Open the console and run the following query:

```elixir
> iex -S mix phoenix.server

import Ecto.Query;
alias LateralJoin.Game;
alias LateralJoin.GameSold;
alias LateralJoin.Repo

query =
  Game
  |> join(:inner_lateral, [g], gs in fragment("SELECT * FROM games_sold AS gs WHERE gs.game_id = ? ORDER BY gs.sold_ON LIMIT 2", g.id))
  |> select([g, gs], {g.name, gs.sold_on})

Repo.all(query)
```
