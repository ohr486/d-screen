defmodule DsBackend.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      DsBackendWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: DsBackend.PubSub},
      # Start the Endpoint (http/https)
      DsBackendWeb.Endpoint
      # Start a worker by calling: DsBackend.Worker.start_link(arg)
      # {DsBackend.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DsBackend.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    DsBackendWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
