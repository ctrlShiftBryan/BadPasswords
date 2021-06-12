defmodule Badpasswords.MixProject do
  use Mix.Project

  def project do
    [
      app: :badpasswords,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
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

  defp description() do
    """
    A genserver that loads up an ets table with bad passwords and a helper function to look the password up. As described here https://elixirforum.com/t/most-performant-way-to-search-a-file-for-a-string/16996
    """
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
