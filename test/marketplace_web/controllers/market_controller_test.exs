defmodule MarketplaceWeb.MarketControllerTest do
  use MarketplaceWeb.ConnCase

  alias Marketplace.Market
  alias Marketplace.Widget

  setup do
    Market.sell_widget("Jake Prem", "Some rocks", "It rocks", 50.0)

    on_exit(fn ->
      :ok = Ecto.Adapters.SQL.Sandbox.checkout(Marketplace.Repo)
      Marketplace.Repo.delete_all(Widget)
    end)
  end

  describe "Widgets" do
    test "Are listed on the page", %{conn: conn} do
      conn = get(conn, "/")
      assert html_response(conn, 200) =~ "Jake Prem"
    end
  end
end
