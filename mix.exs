defmodule GetthruOpenTelemetry.MixProject do
  use Mix.Project

  def project do
    [
      app: :getthru_open_telemetry,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry_exporter, "~> 1.8"},
      {:opentelemetry, "~> 1.5"},
      {:opentelemetry_api, "~> 1.4"},
    ]
  end
end
