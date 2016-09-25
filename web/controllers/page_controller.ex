defmodule NgPhoenix2.PageController do
  use NgPhoenix2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
