# pokedex-schema

Shared [Ecto](https://hexdocs.pm/ecto/Ecto.html) schema definitions for the **pokedex** project.

This library contains the database models used by multiple services in the **pokedex** ecosystem, including:

- [pokedex-api](https://github.com/michaelmaysonet74/pokedex-api) – The GraphQL & REST API layer.
- [pokedex-etl](https://github.com/michaelmaysonet74/pokedex-etl) – The data ingestion and processing service.

## Installation

Add `pokedex_schema` as a dependency in your `mix.exs`:

```elixir
def deps do
  [
    {:pokedex_schema,
     git: "https://github.com/michaelmaysonet74/pokedex-schema.git",
     tag: "v0.1.0"}
  ]
end
```
