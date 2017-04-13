defmodule PmpCore.User do
  @moduledoc """
  A user in the system
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :firstname, :string
    field :lastname, :string
    field :username, :string
    field :email, :string

    timestamps()
  end

  @required_fields ~w(username email)a
  @optional_fields ~w(firstname lastname)a

  def changeset(record, params \\ :empty) do
    record
    |> cast(params, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:username)
  end

end
