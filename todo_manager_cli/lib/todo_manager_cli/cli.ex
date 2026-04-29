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
    handle_option(option, tasks)
  end
  def handle_option("1", tasks) do
    add_task(tasks)
  end
  def handle_option("2", tasks) do
    list_tasks(tasks)
  end
  def handle_option("3", tasks) do
    remove_task(tasks)
  end
  def handle_option("4", _tasks) do
    IO.puts("Bye!")
  end
  def handle_option(_, tasks) do
    IO.puts("Invalid option")
    menu(tasks)
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
