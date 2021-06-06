defmodule PhoenixGettingStarted.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_getting_started,
    adapter: Ecto.Adapters.Postgres
end
