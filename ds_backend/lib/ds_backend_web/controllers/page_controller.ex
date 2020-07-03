defmodule DsBackendWeb.PageController do
  use DsBackendWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
