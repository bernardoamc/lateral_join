defmodule LateralJoin.PageController do
  use LateralJoin.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
