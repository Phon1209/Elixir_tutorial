## Commands

- Help

```bash
mix help
```

- Creating a new project

```bash
mix new my_app
```

### Project structure

- `mix.exs` - project configuration file
- `lib/` - source code
- `test/` - test files
- `.formatter.exs` - code formatter configuration

### Running the code

- Compile the project

```bash
mix compile
```

- Interactive Elixir shell

```bash
iex -S mix
```

- Run file

```bash
mix run -e "Command"
```

`-e` flag: Code to be executed can also be passed inline with the -e option:
