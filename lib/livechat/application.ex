defmodule Livechat.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      LivechatWeb.Telemetry,
      # Start the Ecto repository
      Livechat.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Livechat.PubSub},
      # Start Finch
      {Finch, name: Livechat.Finch},
      # Start the Endpoint (http/https)
      LivechatWeb.Endpoint,
      # Start a worker by calling: Livechat.Worker.start_link(arg)
      # {Livechat.Worker, arg}
      {Nx.Serving,
       serving: LiveChat.Model.FlanT5Base.serving(),
       name: LiveChat.Model.FlanT5Base.Serving,
       batch_timeout: 100}
      # {Nx.Serving,
      #  serving: LiveChat.Model.FlanT5Large.serving(),
      #  name: LiveChat.Model.FlanT5Large.Serving,
      #  batch_timeout: 100}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Livechat.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LivechatWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
