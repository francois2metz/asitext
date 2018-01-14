defmodule AsitextWeb.Router do
  use AsitextWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AsitextWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/login", PageController, :login
    post "/login", PageController, :log
    get "/:type/:slug", PageController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", AsitextWeb do
  #   pipe_through :api
  # end
end
