defmodule PhoenixGettingStartedWeb.PageController do
  use PhoenixGettingStartedWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
