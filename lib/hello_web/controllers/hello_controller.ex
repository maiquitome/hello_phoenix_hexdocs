defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
    IO.inspect(conn)
  end

  def show(conn, %{"messenger" => variavel} = params) do
    render(conn, :show, messenger: variavel)
    IO.inspect(params)
  end
end
