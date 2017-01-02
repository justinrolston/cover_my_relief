defmodule CoverMyRelief.Mixfile do
  use Mix.Project

  @version String.strip(File.read!("VERSION"))

  def project do
    [app: :cover_my_relief,
     version: @version,
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  def deps do
    [
      {:httpoison, "~> 0.10.0"},
      {:poison, "~> 3.0"},
      {:exvcr, "~> 0.7", only: :test },
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

  defp description do
    """
    Cover My Relief is an Elixir client to the CoverMyMeds API.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Justin Rolston"],
      licenses: [""],
      links: %{
        "GitHub" => "https://github.com/justinrolston/cover_my_relief"
      }
    ]
  end
end
