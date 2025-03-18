defmodule Tupla do
  def menor(x,y) do
    cond do
    x >= y -> y
    y > x -> x
    end
  end
  def menor_tres(x,y,z) do
    menor(menor(x,y), z)
  end

  def maior(x,y) do
    cond do
    x >= y -> x
    y > x -> y
    end
  end
  def maior_tres(x,y,z) do
    maior(maior(x,y), z)
  end

  def soma_tuplas({a,b}, {c,d}), do: a+b+c+d
  def shift({{x,y},z}), do: {x,{y,z}}
  def minEmax(a, b, c), do: {menor_tres(a,b,c), maior_tres(a,b,c)}
  def soma_lista_tuplas({}), do: 0
  def soma_lista_tuplas([{a,b}|t]), do: a+b+soma_lista_tuplas(t)

  def zip([], [_h|_t]), do: []
  def zip([_h|_t], []), do: []
  def zip([h1|t1], [h2|t2]) do
    [{h1, h2}] ++ zip(t1,t2)
  end

  def zip_tres([], [_h2|_t2], [_h3|_t3]), do: []
  def zip_tres([_h1|_t1], [], [_h3|_t3]), do: []
  def zip_tres([_h1|_t1], [_h2|_t2], []), do: []
  def zip_tres([h1|t1], [h2|t2], [h3|t3]), do: [{h1, h2, h3}] ++ zip_tres(t1,t2,t3)

  def unzip_esq([]), do: []
  def unzip_esq([{a,b}|t]), do: [a] ++ unzip_esq(t)

  def unzip_dir([]), do: []
  def unzip_dir([{a,b}|t]), do: [b] ++ unzip_dir(t)

  def unzip([h|t]), do: {unzip_esq([h|t]), unzip_dir([h|t])}


end
