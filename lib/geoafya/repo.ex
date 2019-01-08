defmodule Geoafya.Repo do
  use Ecto.Repo,
    otp_app: :geoafya,
    adapter: Ecto.Adapters.Postgres
end
