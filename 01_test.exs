#IO.puts("Ivan")
#IO.puts "Rosolen"
#IO.puts "Ivan" <> "Rosolen"

ExUnit.start

defmodule IvanTest do
    use ExUnit.Case

  test "sucesso" do
    assert 1 + 1 == 2
  end

  test 'erro' do
    refute 1 + 1 == 3
  end

  test :atom_assert_raise do
    assert_raise ArithmeticError, fn ->
      1 + "x"
    end
  end

end