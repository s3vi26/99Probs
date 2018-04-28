defmodule NintyNine do
  def myLast([]), do: []
  def myLast([head | []]), do: head
  def myLast([_head | tail]), do: myLast(tail)

  def myButLast([]), do: []
  def myButLast([head | tail]) when length(tail) == 1, do: head
  def myButLast([_head | tail]), do: myButLast(tail)

  def elementAt([], _e), do: {:error, "Index out of bounds"}
  def elementAt(list, e), do: elementAt(list, e, 1)
  def elementAt([], e, _index), do: elementAt([], e)
  def elementAt([head | _tail], e, index) when e == index, do: head
  def elementAt([_head | tail], e, index), do: elementAt(tail, e, index + 1)

  def myLength([]), do: 0
  def myLength(list), do: myLength(list, 1)
  def myLength(string, i) when is_binary(string), do: myLength(String.codepoints(string), i)
  def myLength([_head | []], i), do: i
  def myLength([_head | tail], i), do: myLength(tail, i+1)
end

