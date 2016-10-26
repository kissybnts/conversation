# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Conversation.Repo.insert!(%Conversation.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Conversation.UserRoll
alias Conversation.Repo

Repo.insert! %UserRoll{ name: 'USER' }
Repo.insert! %UserRoll{ name: 'ADMIN' }
