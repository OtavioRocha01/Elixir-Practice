defmodule Lista3 do
  def mult_dois_lista([]), do: []
  def mult_dois_lista([h|t]), do: [h*2|mult_dois_lista(t)]

  def tamanho([]), do: 0
  def tamanho([_h|t]), do: 1 + tamanho(t)

  def produto_lista([]), do: 1
  def produto_lista([h|t]), do: h * produto_lista(t)

  def and_lista([]), do: true
  def and_lista([h|t]), do: h && and_lista(t)

  def insere_final(n, []), do: [] ++ [n]
  def insere_final(n, [h|t]), do: [h|insere_final(n, t)]

  def neg_lista([]), do: []
  def neg_lista([h|t]), do: [not h|neg_lista(t)]

  def join([], lista), do: lista
  def join([h|t], lista), do: [h|join(t, lista)]

  def concat_lista([]), do: []
  def concat_lista([h|t]), do: h ++ concat_lista(t)

  def inverte_lista([]), do: []
  def inverte_lista([h|t]), do: inverte_lista(t) ++ [h]
end
