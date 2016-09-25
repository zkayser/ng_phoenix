defmodule NgPhoenix2.Router do
  use NgPhoenix2.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end
  
  # Other scopes may use custom stacks.
  # scope "/api", NgPhoenix2 do
  #   pipe_through :api
  # end

  scope "/", NgPhoenix2 do
    pipe_through :browser # Use the default browser stack

    get "/*path", PageController, :index
  end

end
