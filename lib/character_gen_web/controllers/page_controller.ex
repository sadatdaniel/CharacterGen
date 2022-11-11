defmodule CharacterGenWeb.PageController do
  use CharacterGenWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
