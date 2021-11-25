# pid = spawn(Pingpong, :mailbox, [])
# send(pid, {:ping})
# send(pid, {:pong})

# pid = spawn(Pingpong, :mailboxSelf, [])
# send(pid, {:ping, pid})


defmodule Pingpong do

  def mailbox() do
    receive do
      {:ping} ->
        IO.puts " Ping !!"
        mailbox()
      {:pong} ->
        IO.puts " Pong !!"
        mailbox()
    end
  end

  def mailboxSelf() do
    IO.inspect self()
    receive do
      {:ping, pid} ->
        :timer.sleep(500)
        IO.puts " Ping !!"
        send(pid, {:pong, pid})
        mailboxSelf()
      {:pong, pid} ->
        :timer.sleep(500)
        IO.puts " Pong !!"
        send(pid, {:ping, pid})
        mailboxSelf()
    end
  end
end
