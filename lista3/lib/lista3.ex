defmodule Lista3 do
  def mult_dois_lista([]), do: []
  def mult_dois_lista([h|t]), do: [h*2|mult_dois_lista(t)]

  def tamanho([]), do: 0
  def tamanho([_h|t]), do: 1 + tamanho(t)

  def produto_lista([]), do: 1
  def produto_lista([h|t]), do: h * produto_lista(t)

  def and_lista([]), do: true
  def and_lista([h|t]), do: h && and_lista(t)

  def insere_final(n, []), do: [n]
  def insere_final(n, [h|t]), do: [h|insere_final(n, t)]

  def insere_inicio(n, l), do: [n|l]

  def neg_lista([]), do: [] # [true, false]
  def neg_lista([h|t]), do: [not h|neg_lista(t)]

  def join([], lista), do: lista # [1,2,3,4,5,6]
  def join([h|t], lista), do: [h|join(t, lista)]

  def concat_lista([]), do: []
  def concat_lista([h|t]), do: h ++ concat_lista(t)

  def inverte_lista([]), do: []
  def inverte_lista([h|t]), do: inverte_lista(t) ++ [h]

  def primo?(x) do
    cond do
      verifica_primo(x, x) == 2 -> true
      true -> false
    end
  end
  def verifica_primo(_x, 1), do: 1
  def verifica_primo(x, y) do
    cond do
      x == y && rem(x,y) == 0 -> 1 + verifica_primo(x, y-1)
      rem(x,y) == 0 -> 0
      true -> verifica_primo(x, y-1)
    end
  end
end
