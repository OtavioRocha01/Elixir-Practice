defmodule Listas2 do
  def membro([], _x), do: false
  def membro([h|t], x) do
    cond do
      h != x -> membro(t,x)
      true -> true
    end
  end

  def quantas_vezes([], _x), do: 0
  def quantas_vezes([h|t], x) do
    cond do
      h == x -> 1 + quantas_vezes(t,x)
      true -> quantas_vezes(t,x)
    end
  end

  def membro2([h|t], x) do
    cond do
      quantas_vezes([h|t], x) == 0 -> false
      true -> true
    end
  end

  def unicos(l), do: unicos_(l,l)
  defp unicos_([],_l), do: []
  defp unicos_([h|t], l) do
    cond do
      quantas_vezes(l,h) == 1 -> [h|unicos_(t,l)]
      true -> unicos_(t,l)
    end
  end

  def maiores(_x, []), do: []
  def maiores(x, [h|t]) do
    cond do
      h > x -> [h] ++ maiores(x,t)
      true -> maiores(x,t)
    end
  end

  def menores(_x, []), do: []
  def menores(x, [h|t]) do
    cond do
      h <= x -> [h] ++ menores(x,t)
      true -> menores(x,t)
    end
  end

  def quick_sort([]), do: []
  def quick_sort([h|t]) do
    quick_sort(menores(h,t)) ++ [h] ++ quick_sort(maiores(h,t))
  end

end
