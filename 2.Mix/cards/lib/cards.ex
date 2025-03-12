defmodule Cards do
  # Module = Collection of functions/methods
  def create_simple_deck do
    ["Ace", "Two", "Three"]
  end

  def create_deck do
    values = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ]

    suits = ["Hearts", "Diamonds", "Clubs", "Spades"]

    # Nested loops will return a list of a list
    # for suit <- suits do
    #   This returns a list
    #   for value <- values do
    #     "#{value} of #{suit}"
    #   end
    # end

    # To not nest the lists
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # Question mark can be used in function names
  # It's a convention to use it for functions that return a boolean
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  # Since the variable is immutable, the deck returned will be a new deck
  def deal(deck, hand_size) do
    # In the Enum.split, it returns a tuple
    # The first element is the first n elements of the list
    # The second element is the rest of the list

    # Since it's tuple, we cannot use Enum functions directly or use
    # [] to access the elements
    {hand, rest} =
      deck
      |> shuffle
      |> Enum.split(hand_size)

    hand
  end
end
