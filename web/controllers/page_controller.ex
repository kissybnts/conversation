defmodule Conversation.PageController do
  use Conversation.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
