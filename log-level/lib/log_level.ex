defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      level == 0 && !legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 && !legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    code = to_label(level, legacy?)
    cond do
      code in [:error, :fatal] -> :ops
      code == :unknown and legacy? -> :dev1
      code == :unknown and !legacy? -> :dev2
      true -> false
    end
  end
end
