defmodule TerminalIO do

  @doc """
  Testando IO
  """
  def inputNome do
    IO.gets("Digite seu nome: ")
    |> String.trim
  end

  def inputResposta do
    IO.getn("Gosta de calvin e haroldo? [s|n] ", 1)
  end

  def pergunta do
    nome = inputNome()
    case String.downcase(inputResposta()) do
      "s" ->
        IO.puts "BOA #{nome}!"
        IO.puts asciiArt()
      "n" ->
        IO.puts "AFF, #{nome}."
      _ ->
        IO.puts "Opção inválida 's' ou 'n'."
    end
  end

  def asciiArt do
    path = Path.expand("calvin.txt", __DIR__)
    case File.read(path) do
      {:ok, art} -> art
      {:error, _} -> IO.puts "Erro: calvin.txt não encontrado"; System.halt(1)
    end
  end
end

ExUnit.start


defmodule InputOutputTest do
  use ExUnit.Case
  import String

  test "validar se encontrou art do calvin.txt" do
    art = TerminalIO.asciiArt
    assert trim(art) |> first == "o"
  end
end

TerminalIO.pergunta