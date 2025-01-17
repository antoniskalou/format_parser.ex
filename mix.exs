defmodule FormatParser.Mixfile do
  use Mix.Project

  def project do
    [
      app: :format_parser,
      version: "1.3.1",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test]
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
      {:excoveralls, "~> 0.8.1", only: :test},
      {:ex_doc, "~> 0.19.3", only: :dev},
      {:credo, "~> 0.8.10", only: [:dev, :test], runtime: false}
    ]
  end

  # Package Information
  defp package do
    [
      files: ["test", "lib", "mix.exs", "README.md", "LICENSE*"],
      maintainers: ["Dunya Kirkali", "Onur Kucukkece"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/ahtung/format_parser.ex"}
    ]
  end

  # Package description
  defp description do
    """
    The owls are not what they seem
    """
  end
end
