## Integer

```elixir
1
0x1F
```

Support basic arithmetic

```elixir
1 + 2 # 3
10 / 2 # 5.0

div(10, 2) # 5
div 10, 2  # 5 (doesn't require parentheses)
rem 10, 3  # 1

# It also support binary, octal, and hexadecimal
0b1010 # 10
0o777  # 511
0x1F   # 31

round(3.58) # 4
trunc(3.58) # 3

is_integer(1) # true
is_integer(1.0) # false
is_float(1.0) # true
is_number(1) # true

```

## Boolean

`and`, `or`, `not` are strict boolean operators

```elixir
true and true # true
1 and true # error

true and 1 # 1 (it's a short-circuit operator)
true and 1 and 1 # error
```

`&&`, `||`, `!` are more flexible
only `false` and `nil` are falsy, everything else is truthy (including `0` and `""`)

```elixir
1 && true # true
0 || false # true
!true # false
```

## Atom

`false`, `true`, `nil` are atoms

## String

```elixir
"elixir"

# Concatenation (requires both sides to be strings)
"Hello " <> "elixir" # "Hello elixir"

# Interpolation (Can use anytype that can be converted to string)
name = "elixir"
"Hello #{name}" # "Hello elixir"

# String are binaries
is_binary("elixir") # true
byte_size("elixir") # 6
byte_size("hellö") # 6 (UTF-8 encoded)  ö is 2 bytes long

String.length("elixir") # 6
String.length("hellö") # 5 (number of characters)

String.upcase("elixir") # "ELIXIR"
String.upcase("hellö") # "HELLÖ" (UTF-8 encoded)
String.downcase("ELIXIR") # "elixir"
```

## Comparison

The same as Javascript

```elixir
1 == 1 # true
1 != 1 # false

1 < 2 # true
1 <= 2 # true
1 > 2 # false
1 >= 2 # false

1 == 1.0 # true
1 === 1.0 # false
1 !== 1.0 # true
```

### String Special

`?a` is to get the codepoint of a character

```elixir
?a # 97
?a == 97 # true
```

or just use unicode

```elixir
"\u0061" == "a"
```

Note: String is a UTF-8 encoded binary.

```elixir
<<head::binary-size(2), rest::binary>> = <<0, 1, 2, 3>>
<<0, 1, 2, 3>>

head
<<0, 1>>

rest
<<2, 3>>
```

The head:tail only check byte by byte, not character by character.
So you need `::utf8` to tell what to expect.

```elixir
# ü is 2 bytes long in UTF-8
<<x::utf8, rest::binary>> = "über"
"über"

x == ?ü
true

rest
"ber"
```
