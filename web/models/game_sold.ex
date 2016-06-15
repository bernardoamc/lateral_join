defmodule LateralJoin.GameSold do
  use LateralJoin.Web, :model

  schema "games_sold" do
    field :sold_on, Ecto.Date
    belongs_to :game, LateralJoin.Game

    timestamps
  end

  @required_fields ~w(sold_on)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
