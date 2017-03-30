# Imdumb

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `imdumb` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:imdumb, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/imdumb](https://hexdocs.pm/imdumb).

## Using
1. Compile it:
```
mix escript.build
```
2. Move it to a binary folder:
```
move imdumb ~/.bin/.
```
3. Use with the --all flag:
```
imdumb --all
```

## ADDING NEW COMMANDS:

1. Open "lib/imdumb.ex"
2. Adds the new command in the `@cheatsheet` variable
3. Recompile:
```
mix escript.build
```
4. Enjoy!
