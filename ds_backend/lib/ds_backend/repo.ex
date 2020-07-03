defmodule DsBackend.Repo do
  use Ecto.Repo,
    otp_app: :ds_backend,
    adapter: Ecto.Adapters.Postgres
end
