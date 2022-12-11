defmodule SimpleServer.Router do
  use Plug.Router
  use Plug.Debugger
  require Logger
  plug(Plug.Logger, log: :debug)

  plug(:match)

  plug(:dispatch)

  # Simple GET Request handler for path /
  get "/" do
    t1 = :os.system_time(:millisecond)
    res = Poison.encode!(%{"server" => "elixir"})
    t2 = :os.system_time(:millisecond)

    time_diff = t2 - t1
    IO.inspect(time_diff, label: "time_diff")

    send_resp(conn, 200, res)
  end

  # Simple GET Request handler for path /hello
  get "/hello" do
    send_resp(conn, 200, Poison.encode!(%{"hello" => "world"}))
  end

  # Basic example to handle POST requests with a JSON body
  post "/post" do
    {:ok, body, conn} = read_body(conn)

    body = Poison.decode!(body)

    IO.inspect(body)

    send_resp(conn, 201, "created: #{get_in(body, ["message"])}")
  end

  # "Default" route that will get called when no other route is matched

  match _ do
    send_resp(conn, 404, "not found")
  end
end
