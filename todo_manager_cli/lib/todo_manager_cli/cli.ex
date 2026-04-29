defmodule TodoManagerCli.Cli do
  def start do
    IO.puts("Hello, welcome to the Todo Manager CLI!\n")
    menu([])
  end
  def menu(list) do
    IO.puts("1 - Add task\n2 - List tasks\n3 - Remove task\n4 - Exit\n")
    option =
      IO.gets("What do you want to do? Options(1, 2, 3, 4):\n")
      |>String.trim
      |>String.to_integer
    handle_option(option, list)
  end
  def handle_option(option, list) do
    case option do
      1 -> add_task(list)
      2 -> list_tasks(list)
      3 -> remove_task()
      4 -> IO.puts("Exiting...")
      _ ->
        IO.puts("Invalid option, please try again.")
        menu([])
    end
  end
  def add_task(tasks) do
    newtask =
      IO.gets("What task do you want to add?\n")
      |>String.trim
    IO.puts("Adding task: #{newtask}")
    list = [newtask | tasks]
    menu(list)
  end
  def list_tasks do
    IO.puts("Listing tasks...")
  end
  def remove_task do
    IO.puts("Removing task...")
  end

end
