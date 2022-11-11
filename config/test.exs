import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :character_gen, CharacterGen.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "character_gen_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :character_gen, CharacterGenWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "lgyno7DW4g70xDMeMKz0TXHpp6td0Syle6HO9KI0wsHqT22+VU90rEa2miHpcVcN",
  server: false

# In test we don't send emails.
config :character_gen, CharacterGen.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
