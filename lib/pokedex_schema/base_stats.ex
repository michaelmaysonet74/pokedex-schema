defmodule PokedexSchema.BaseStats do
  use Ecto.Schema
  import Ecto.Changeset

  alias PokedexSchema.Pokemon

  @json_fields [
    :hp,
    :attack,
    :defense,
    :special_attack,
    :special_defense,
    :speed
  ]

  @derive {Jason.Encoder, only: @json_fields}
  schema "base_stats" do
    field :hp, :integer
    field :attack, :integer
    field :defense, :integer
    field :special_attack, :integer
    field :special_defense, :integer
    field :speed, :integer

    belongs_to :pokemon, Pokemon
  end

  def changeset(%__MODULE__{} = base_stats, params \\ %{}) do
    base_stats
    |> cast(params, [
      :hp,
      :attack,
      :defense,
      :special_attack,
      :special_defense,
      :speed
    ])
  end
end
