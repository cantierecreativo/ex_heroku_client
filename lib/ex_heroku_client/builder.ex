defmodule ExHerokuClient.Builder do
  import JSONHyperschema.ClientBuilder

  json = File.read!("priv/schemas/heroku-schema.json")
  json = String.replace(
    json, ~s("id": "http://api.heroku.com/schema#"), ~s("id":"#")
  )
  defapi "Heroku", :ex_heroku_client, json
end
