defmodule MarketplaceWeb.Router do
  use MarketplaceWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    # plug :fetch_flash
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MarketplaceWeb do
    pipe_through :browser

    get "/", PageController, :index

    get "/market", MarketController, :index
    live "/market/live", MarketLiveView
  end

  # Other scopes may use custom stacks.
  # scope "/api", MarketplaceWeb do
  #   pipe_through :api
  # end
end
