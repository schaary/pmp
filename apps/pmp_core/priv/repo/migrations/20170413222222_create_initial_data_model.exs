defmodule PmpCore.Repo.Migrations.CreateInitialDataModel do
  use Ecto.Migration

  def change do

    create table(:users) do
      add :firstname, :string
      add :lastname, :string
      add :username, :string
      add :email, :string

      timestamps()
    end
    create unique_index(:users, [:username])
  end

end
