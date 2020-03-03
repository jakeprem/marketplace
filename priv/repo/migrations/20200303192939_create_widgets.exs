defmodule Marketplace.Repo.Migrations.CreateWidgets do
  use Ecto.Migration

  def change do
    create table(:widgets) do
      add :owner, :string
      add :name, :string
      add :description, :string
      add :is_for_sale, :boolean, default: false, null: false
      add :price, :float

      timestamps()
    end

  end
end
