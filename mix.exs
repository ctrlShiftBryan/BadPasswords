defmodule Badpasswords.MixProject do
  use Mix.Project

  def project do
    [
      app: :badpasswords,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      source_url: "https://github.com/ctrlShiftBryan/BadPasswords"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    %{
      licenses: ["Apache-2.0"],
      maintainers: ["Bryan Arendt"],
      links: %{"GitHub" => "https://github.com/ctrlShiftBryan/BadPasswords"}
    }
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
