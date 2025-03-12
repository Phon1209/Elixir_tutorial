## Pattern Matching

It's trying to match a value from the left to the data on the right.

```elixir
color1= ["red"]
color1 # ["red"]

[color2] = ["red"]
color2 # "red"

[color1, color2] = ["red", "blue"]
color1 # "red"
color2 # "blue"

[color1, color2] = ["red", "blue", "green"] # Size mismatch
# ** (MatchError) no match of right hand side value: ["red", "blue", "green"]
```
