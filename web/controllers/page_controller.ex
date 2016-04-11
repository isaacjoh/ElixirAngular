defmodule ElixirAngular.PageController do
  use ElixirAngular.Web, :controller

  def index(conn, _params) do # the underscore ensures we ignore that variable
    render conn, "index.html"
  end

  def show(conn, params) do
    render conn, "show.html", id: params["id"]
  end
end
