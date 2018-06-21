defmodule MyTrello.PageController do
  use MyTrello.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
