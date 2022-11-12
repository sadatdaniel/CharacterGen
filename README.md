# CharacterGen

Start Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Usage

Once the server is running you can generate diverse characters by passing the numbers of characters you need.

```bash
http://localhost:4000/api/generate/5
```
