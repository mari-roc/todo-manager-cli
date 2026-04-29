defmodule TodoManagerCli.Cli do
  def start do
    IO.puts("Hello, welcome to the Todo Manager CLI!")
    menu([])
  end
  def menu(tasks) do
    IO.puts("\n1 - Add task\n2 - List tasks\n3 - Remove task\n4 - Exit\n")
    option =
      IO.gets("What do you want to do? Options(1, 2, 3, 4):\n")
      |>String.trim
      |>String.to_integer
    handle_option(option, tasks)
  end
  def handle_option(option, tasks) do
    case option do
      1 -> add_task(tasks)
      2 -> list_tasks(tasks)
      3 -> remove_task(tasks)
      4 -> exit()
      _ ->
        IO.puts("Invalid option, please try again.")
        menu(tasks)
    end
  end
  def add_task(tasks) do
    newtask =
      IO.gets("What task do you want to add?\n")
      |>String.trim
    IO.puts("Adding task: #{newtask}\n")
    list = [newtask | tasks]
    list_tasks(list)
  end
  def list_tasks(tasks) do
    IO.puts("Listing tasks...")
    Enum.each(tasks, fn task -> IO.puts("- #{task}") end)
    menu(tasks)
  end
  def remove_task(tasks) do
    removetask =
      IO.gets("What task do you want to remove?\n")
      |>String.trim
    list = Enum.filter(tasks, fn task -> task != removetask end)
    IO.puts("Removing task: #{removetask}\n")
    list_tasks(list)
    menu(list)
  end
  def exit do
    IO.puts("Exiting...")
  end

end
