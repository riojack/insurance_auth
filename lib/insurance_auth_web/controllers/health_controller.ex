defmodule InsuranceAuthWeb.HealthController do
    use InsuranceAuthWeb, :controller

    def health(conn, _params) do
        json conn, %{status: "healthy"}
    end
end