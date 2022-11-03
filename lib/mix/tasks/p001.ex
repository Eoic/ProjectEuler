defmodule Mix.Tasks.P001 do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  use Mix.Task

  def sum_multiples() do
    3..999 |> Enum.reduce(fn element, sum ->
      if rem(element, 3) === 0 or rem(element, 5) === 0 do
        sum + element
      else
        sum
      end
    end)
  end

  @impl Mix.Task
  def run(_args) do
    sum_multiples() |> IO.puts()
  end
end
