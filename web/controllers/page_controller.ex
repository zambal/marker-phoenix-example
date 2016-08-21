defmodule MarkerPhoenixExample.PageController do
  use MarkerPhoenixExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
