defmodule Myapp.HelloPlug do
    import Plug.Conn

    def init([]), do: false
    def call(conn, _opts) do
      conn
        |> put_resp_content_type("text/html")
        |> send_resp(200, "<h1>Hello</h1>")
    end
end