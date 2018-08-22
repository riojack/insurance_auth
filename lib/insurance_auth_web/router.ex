defmodule InsuranceAuthWeb.Router do
  use InsuranceAuthWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", InsuranceAuthWeb do
    pipe_through :api

    get "/health", HealthController, :health
  end
end
