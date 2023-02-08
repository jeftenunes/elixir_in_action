defmodule ProtocolsBasics do
  def test_protocol do
    str = "Uma string"
    IO.puts BasicProtocol.type(str)

    int = 1
    IO.puts BasicProtocol.type(int)
  end
end
