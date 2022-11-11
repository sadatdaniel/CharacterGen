defmodule CharacterGen.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CharacterGen.Repo,
      # Start the Telemetry supervisor
      CharacterGenWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CharacterGen.PubSub},
      # Start the Endpoint (http/https)
      CharacterGenWeb.Endpoint
      # Start a worker by calling: CharacterGen.Worker.start_link(arg)
      # {CharacterGen.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CharacterGen.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CharacterGenWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
