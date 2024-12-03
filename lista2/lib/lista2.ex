defmodule Lista2 do
  def maxi(a,b) do
    cond do
      a > b -> a
      true -> b
    end
  end

  # VENDAS
  def vendas(0), do: 33
  def vendas(1), do: 22
  def vendas(2), do: 18
  def vendas(3), do: 0
  def vendas(4), do: 66
  def vendas(_n), do: 23
  def venda_total(0) do
    vendas(0)
  end
  def venda_total(n) do
    vendas(n) + venda_total(n-1)
  end #END VENDAS

  def maior_venda(0), do: vendas(0)
  def maior_venda(1) do
    maxi(vendas(1), vendas(0))
  end
  def maior_venda(n) do
    maxi(vendas(n), maior_venda(n-1))
  end

  def semana_max_venda(n) do
    cond do
      vendas(n) == maior_venda(n) -> n
      true -> semana_max_venda(n-1)
    end
  end

  def zero_vendas(n) when n == 0 do
    cond do
      vendas(0) == 0 -> 0
      true -> -1
    end
  end
  def zero_vendas(n) do
    cond do
      vendas(n) == 0 -> n
      true -> zero_vendas(n-1)
    end
  end

  def acha_semana(n,s) when n==0 do
    cond do
      vendas(n) == s -> n
      true -> -1
    end
  end
  def acha_semana(n,s) do
    cond do
      vendas(n) == s -> n
      true -> acha_semana(n-1,s)
    end
  end

  def venda_total(n, m) when n == m do
    vendas(n)
  end
  def venda_total(n, m) do
    vendas(n) + venda_total(n-1, m)
  end

  def maior_venda(n, m) when n == m do
    vendas(n)
  end
  def maior_venda(n, m) do
    maxi(vendas(n), maior_venda(n-1, m))
  end

  def semana_max_venda(n, m) do
    cond do
      vendas(n) == maior_venda(n, m) -> n
      true -> semana_max_venda(n-1, m)
    end
  end

  def zero_vendas(n, m) when n == m do
    cond do
      vendas(0) == 0 -> 0
      true -> -1
    end
  end
  def zero_vendas(n, m) do
    cond do
      vendas(n) == 0 -> n
      true -> zero_vendas(n-1, m)
    end
  end

  def produto(m,n) when m == n do
    m
  end
  def produto(m,n) do
    m * produto(m+1, n)
  end

  def potencia(n,m) when m == 1 do
    n
  end
  def potencia(n,m) do
    n * potencia(n, m-1)
  end

  def fib(n) when n == 0 do
    0
  end
  def fib(n) when n == 1 do
    1
  end
  def fib(n) do
    fib(n-1) + fib(n-2)
  end
end # END Lista2
