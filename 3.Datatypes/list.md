## List

list here is linked list, not array. It is a collection of nodes. Each node has a value and a pointer to the next node. The last node has a pointer to null.

`++` and `--` are used to add and remove elements from the list.

```elixir
[1, 2, 3] ++ [4, 5, 6] # [1, 2, 3, 4, 5, 6]
[1, 2, 3] -- [2] # [1, 3] probably not efficient
[1, true, 2, false, 3, true] -- [true, false] # [1, 2, 3, true]
```

`hd` and `tl` are used to get the head and tail of the list.
just like in erlang.

```elixir
hd [1, 2, 3] # 1
tl [1, 2, 3] # [2, 3]
```

`[head | tail]` is used to pattern match the head and tail of the list.

```elixir
[head | tail] = [1, 2, 3]
head # 1
tail # [2, 3]
```

`[head | tail]` is also used to construct a list.

```elixir
list = [1 | [2 | [3 | []]]]
list # [1, 2, 3]
```

### Append and Prepend

```elixir
# This is fast as we only need to traverse `[0]` to prepend to `list`

[0] ++ list
[0, 1, 2, 3]

# This is slow as we need to traverse `list` to append 4

list ++ [4]
[1, 2, 3, 4]
```

## Charlist

When Elixir sees a list of printable ASCII numbers, Elixir will print that as a charlist

```elixir
~c"hello" # [104, 101, 108, 108, 111]
```

## Tuple

Accessing is fast, but updating is slow.
It's slow because it needs to copy the whole tuple and create a new one.

```elixir
tuple = {1, 2, 3}
elem(tuple, 0) # 1
tuple_size(tuple) # 3

# Updating a tuple
put_elem(tuple, 0, 0) # {0, 2, 3}
```
