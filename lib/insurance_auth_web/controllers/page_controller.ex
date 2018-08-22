defmodule InsuranceAuthWeb.PageController do
  use InsuranceAuthWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
