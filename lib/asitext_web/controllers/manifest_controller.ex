defmodule AsitextWeb.ManifestController do
  use AsitextWeb, :controller

  def manifest(conn, _params) do
    manifest = %{
      name: "ASI Lite",
      description: "Affiche les contenu de arretsurimages.net d'une manière optimisée sur mobile.",
      short_name: "ASI Lite",
      start_url: "/",
      display: "standalone",
      icons: []
    }
    render conn, manifest: manifest
  end
end
