# ExHerokuClient

An Elixir client for the Heroku API.

The API is generated at compile time via JSONHyperschema.ClientBuilder.

## Installation

The package can be installed as:

1. Add `ex_heroku_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
[{:ex_heroku_client, "~> 0.1.0"}]
end
```

2. Ensure `ex_heroku_client` is started before your application:

```elixir
def application do
[applications: [:ex_heroku_client]]
end
```

## Authentication

Currently, this client does not offer a login function.

You'll need to go to [your account page](https://dashboard.heroku.com/account)
and copy your API key to `config/{env}.secret.exs`:

```
use Mix.Config

config :json_hyperschema_client_builder, Heroku,
  access_token: "MY API KEY"
```
