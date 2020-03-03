defmodule Marketplace.Market do
  alias Marketplace.Repo
  alias Marketplace.Widget

  def list_widgets do
    Widget |> Repo.all()
  end

  def sell_widget(seller, widget_name, description, price) do
    %Widget{
      description: description,
      is_for_sale: true,
      name: widget_name,
      owner: seller,
      price: price
    } |> Repo.insert!()
  end

  def buy_widget(buyer, widget_id) do
    Widget
    |> Repo.get(widget_id)
    |> Widget.changeset(%{owner: buyer, is_for_sale: false})
    |> Repo.update!()
  end
end
