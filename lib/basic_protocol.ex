defprotocol BasicProtocol do
  @spec type(t) :: String.t()
  def type(value)
end

defimpl BasicProtocol, for: Integer do
  def type(_value), do: "Integer: #{_value}"
end

defimpl BasicProtocol, for: BitString do
  def type(_value), do: "String #{_value}"
end

defimpl BasicProtocol, for: Any do
  @fallback_to_any true
  def type(_), do: "Any"
end
