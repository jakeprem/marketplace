defmodule MarketplaceWeb.MarketController do
  use MarketplaceWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
