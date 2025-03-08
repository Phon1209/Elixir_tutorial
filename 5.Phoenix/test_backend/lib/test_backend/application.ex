defmodule TestBackend.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TestBackendWeb.Telemetry,
      TestBackend.Repo,
      {Ecto.Migrator,
       repos: Application.fetch_env!(:test_backend, :ecto_repos), skip: skip_migrations?()},
      {DNSCluster, query: Application.get_env(:test_backend, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: TestBackend.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: TestBackend.Finch},
      # Start a worker by calling: TestBackend.Worker.start_link(arg)
      # {TestBackend.Worker, arg},
      # Start to serve requests, typically the last entry
      TestBackendWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TestBackend.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TestBackendWeb.Endpoint.config_change(changed, removed)
    :ok
  end

  defp skip_migrations?() do
    # By default, sqlite migrations are run when using a release
    System.get_env("RELEASE_NAME") != nil
  end
end
