use Mix.Config

environment_secrets = "#{Mix.env}.secret.exs"
if File.exists?(Path.join("config", environment_secrets)) do
  import_config environment_secrets
end
