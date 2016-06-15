defmodule LateralJoin.GameSoldTest do
  use LateralJoin.ModelCase

  alias LateralJoin.GameSold

  @valid_attrs %{sold_on: "2010-04-17"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = GameSold.changeset(%GameSold{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = GameSold.changeset(%GameSold{}, @invalid_attrs)
    refute changeset.valid?
  end
end
