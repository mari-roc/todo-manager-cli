defmodule TodoManagerCli.Cli do
  def start do
    IO.puts("Hello, welcome to the Todo Manager CLI!\n")
    menu()
  end
  def menu do
    IO.puts("1 - Add task\n2 - List tasks\n3 - Remove task\n4 - Exit\n")
    option =
      IO.gets("What do you want to do? Options(1, 2, 3, 4):\n")
      |> String.trim
      |>String.to_integer
    handle_option(option)
  end
  def handle_option(option) do
    case option do
      1 -> IO.puts("Adding task...")
      2 -> IO.puts("Listing tasks...")
      3 -> IO.puts("Removing task...")
      4 -> IO.puts("Exiting...")
      _ ->
        IO.puts("Invalid option, please try again.")
        menu()
    end
  end

end
