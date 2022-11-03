defmodule ProjectEuler do
  use Application

  def start(_type, _args) do
    IO.puts("Running...")
    {:ok, Process.whereis(:init)}
  end
end
