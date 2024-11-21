defmodule Lista1 do
  def tres_iguais(x,y,z) do
    x == y && y == z
  end

  def quatro_iguais(x,y,z,w) do
    x == y && y == z && z == w
  end

  # def quantos_iguais(x,y,z) do
  #   cond do
  #     x == y && y == z -> 3 # todos iguais
  #     x == y || z == y || x == z -> 2 # dois iguais
  #     true -> 0
  #   end
  # end

  def todos_diferentes(x,y,z) do
    x != y && z != y && x != z
  end

  def quantos_iguais(x,y,z) do
    cond do
      tres_iguais(x,y,z) -> 3
      todos_diferentes(x,y,z) -> 0
      true -> 2
    end
  end

  def elevado_dois(x) do
    x * x
  end

  def elevado_quatro(x) do
    elevado_dois(elevado_dois(x))
  end

  def palindromo?(str) do
    cond do
      str == String.reverse(str) -> true
      true -> false
    end
  end

  def verifica_triang(x,y,z) do
    x+y > z && y+z > x && x+z > y
  end

  def sinal(x) when x<0, do: -1
  def sinal(x) when x==0, do: 0
  def sinal(x) when x>0, do: 1

  def menor(x,y) do
    cond do
    x >= y -> y
    y > x -> x
    end
  end

  def menor_tres(x,y,z) do
      menor(menor(x,y), z)
  end

end
