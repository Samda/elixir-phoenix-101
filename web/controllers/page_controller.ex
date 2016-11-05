defmodule Metathor.PageController do
  use Metathor.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
