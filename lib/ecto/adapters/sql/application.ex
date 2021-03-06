defmodule Ecto.Adapters.SQL.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    children = [
      Ecto.Migration.Supervisor
    ]

    opts = [strategy: :one_for_one, name: Ecto.Adapters.SQL.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
