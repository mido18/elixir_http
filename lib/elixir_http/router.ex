defmodule ElixirHttp.Router do
    @moduledoc false
    use Plug.Router
    require Logger

    plug Plug.Logger
    plug :match
    plug :dispatch

    def init(options) do
      options
    end

    def start_link do
      {:ok, _} = Plug.Adapters.Cowboy.http ElixirHttp.Router, [],port: 8080
    end

    match _ do
        conn
        |> send_resp(200, "Hello world")
        |> halt
    end
end