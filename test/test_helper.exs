ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ElixirAngular.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ElixirAngular.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ElixirAngular.Repo)

