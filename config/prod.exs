import Config

# Intentionally missing `force_ssl` so Sobelow emits a Config.HSTS finding
# without a line number.
config :foo, Foo.Endpoint, https: [port: 443]
