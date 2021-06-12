defmodule BadPasswords do
  use GenServer

  @table __MODULE__

  @spec contains?(String.t()) :: boolean
  def contains?(password) do
    :ets.member(@table, password |> scrub_password())
  end

  @doc false
  def start_link(opts) do
    GenServer.start_link(__MODULE__, opts)
  end

  @doc false
  def init(_opts) do
    @table = :ets.new(@table, [:named_table])
    send(self(), :populate)
    {:ok, []}
  end

  @doc false
  def handle_info(:populate, state) do
    :code.priv_dir(:badpasswords)
    |> Path.join("10_million_password_list_top_100000.txt")
    |> File.stream!()
    |> Enum.each(fn common_password ->
      # note that you can also do batch inserts
      :ets.insert(@table, {scrub_password(common_password)})
    end)

    {:noreply, state}
  end

  defp scrub_password(password) do
    password
    |> String.trim()
    |> String.downcase()
    |> String.replace(" ", "")
  end
end
