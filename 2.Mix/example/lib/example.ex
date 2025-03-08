defmodule Example do
  @moduledoc """
  Documentation for `Example`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Example.hello()
      :world

  """
  def hello do
    IO.puts("Hello world!")
    :world
  end

  def hello2 do
    # Calling the function does not require parentheses
    # Last line is implicitly returned
    "Hi there!"
  end
end
