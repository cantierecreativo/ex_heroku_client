defmodule HerokuClient.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_heroku_client,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:httpotion, :logger]]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:json_hyperschema_client_builder, "~> 0.6.0"}
    ]
  end
end
