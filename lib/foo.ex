defmodule Foo do
  @moduledoc """
  Documentation for `Foo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Foo.hello()
      :world

  """
  def hello do
    :world
  end

  # These functions are intentionally unsafe. They give the Sobelow workflow
  # findings at real source locations so its GitHub annotations are easy to
  # verify on a pull request.
  def atom_from_input(input), do: String.to_atom(input)
  def evaluate_input(input), do: Code.eval_string(input)
  def deserialize_input(input), do: :erlang.binary_to_term(input)
end
