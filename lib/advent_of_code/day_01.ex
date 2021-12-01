defmodule AdventOfCode.Day01 do
  def part1(args) do
    args
      |> Enum.chunk_every(2, 1, :discard)
      |> Enum.reduce(0, fn [a, b], acc ->
          if a < b, do: acc + 1, else: acc
        end)
  end

  def part2(args) do
    args
      |> Enum.chunk_every(3, 1, :discard)
      |> Enum.map(fn [a, b, c] -> a + b + c end)
      |> part1
  end
end
