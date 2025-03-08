defmodule Cards do
  # Module = Collection of functions/methods

  def create_deck do
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end
end
