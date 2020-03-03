defmodule MarketplaceWeb.MarketLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div>
    Hi
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end
