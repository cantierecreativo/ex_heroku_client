defmodule HerokuClient.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_heroku_client,
      version: "0.3.0",
      description: "An Elixir client for the Heroku API",
      elixir: "~> 1.3",
      package: package(),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      contributors: ["Joe Yates"]
    ]
  end

  def application do
    [applications: [:httpotion, :logger]]
  end

  defp package do
    %{
      licenses: ["MIT"],
      links: %{
        "GitHub" =>
        "https://github.com/cantierecreativo/ex_heroku_client"
      },
      maintainers: ["Joe Yates"]
    }
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:json_hyperschema_client_builder, "~> 0.9.0"}
    ]
  end
end
