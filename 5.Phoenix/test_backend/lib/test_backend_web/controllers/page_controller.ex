defmodule TestBackendWeb.PageController do
  use TestBackendWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def test(conn, _params) do
    stuff = [
      %{name: "John", age: 25},
      %{name: "Jane", age: 22}
    ]

    IO.puts("Hello, world! from the test action")
    # Sending the `stuff` variable to the template
    render(conn, :test, stuff: stuff, data: stuff)
  end

  def data(conn, _params) do
    stuff = [
      %{name: "John", age: 25},
      %{name: "Jane", age: 22}
    ]

    conn
    |> json(stuff)
  end
end
