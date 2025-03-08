# TestBackend

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

## Commands

`mix deps.get` - Install dependencies similar to `npm install`

## File Structure

```
[my_app]/
├── _build/
├── assets/           # Frontend assets (CSS, JS, etc.)
├── config/           # Application configuration
├── deps/             # Dependencies (including LiveView)
├── lib/              # Application code
│   ├── [my_app]/       # Business logic
│   └── [my_app]_web/   # Web interface
│       ├── live/     # LiveView modules
│       ├── components/ # LiveView components
│       └── controllers/, templates/, views/ # Traditional Phoenix components
│       └── router.ex   # Control the routes of the application

├── priv/             # Non-code files
└── test/             # Test files
```
