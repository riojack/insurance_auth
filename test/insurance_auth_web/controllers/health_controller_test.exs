defmodule InsuranceAuthWeb.HealthControllerTest do
  use InsuranceAuthWeb.ConnCase

  test "GET /health", %{conn: conn} do
    conn = get conn, "/health"
    assert json_response(conn, 200) == %{"status" => "healthy"}
  end
end
