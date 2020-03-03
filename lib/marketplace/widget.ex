defmodule Marketplace.Widget do
  use Ecto.Schema
  import Ecto.Changeset

  schema "widgets" do
    field :description, :string
    field :is_for_sale, :boolean, default: false
    field :name, :string
    field :owner, :string
    field :price, :float

    timestamps()
  end

  @doc false
  def changeset(widget, attrs) do
    widget
    |> cast(attrs, [:owner, :name, :description, :is_for_sale, :price])
    |> validate_required([:owner, :name, :description, :is_for_sale, :price])
  end
end
