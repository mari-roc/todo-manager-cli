defmodule TodoManagerCli.Tasks do
  def new_task(tasks, newtask) do
    [newtask | tasks]
  end
  def remove_task(tasks, removetask) do
    Enum.filter(tasks, fn task -> task != removetask end)
  end
end
