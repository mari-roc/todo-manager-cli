# Todo Manager CLI

A simple command-line task manager built with Elixir.

This project was created to practice core Elixir concepts such as recursion, pattern matching, immutable state, and module organization.

## Features

* Add tasks
* List tasks
* Remove tasks
* In-memory task management
* Interactive CLI menu

## Concepts Practiced

* Pattern matching
* Recursion
* Lists and immutability
* Enum module
* Module separation
* CLI interaction with `IO.gets/1` and `IO.puts/1`

## Project Structure

```text id="rm1"
lib/
├── todo_manager_cli/
│   ├── cli.ex
│   └── tasks.ex
```

* `TodoManagerCli.Cli`

  * Handles user interaction and application flow

* `TodoManagerCli.Tasks`

  * Handles task operations and state transformations

## Running the Project

Start the interactive Elixir shell:

```bash id="rm2"
iex -S mix
```

Then run:

```elixir id="rm3"
TodoManagerCli.Cli.start()
```

## Example

```text id="rm4"
1 - Add task
2 - List tasks
3 - Remove task
4 - Exit
```

## Future Improvements

* Remove tasks by index
* Input validation
* Persist tasks to file
* Automated tests

## Learning Goals

This project focuses on building confidence with Elixir fundamentals and functional programming concepts through a small but complete CLI application.
