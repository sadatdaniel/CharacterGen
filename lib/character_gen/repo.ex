defmodule CharacterGen.Repo do
  use Ecto.Repo,
    otp_app: :character_gen,
    adapter: Ecto.Adapters.Postgres
end
