defmodule SyrupWeb.PageController do
  use SyrupWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
