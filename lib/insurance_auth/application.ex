defmodule InsuranceAuth.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(InsuranceAuthWeb.Endpoint, []),
    ]

    opts = [strategy: :one_for_one, name: InsuranceAuth.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    InsuranceAuthWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
