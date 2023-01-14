# Auto generated repo.
Auto generated from https://apis.e-conomic.com/
Steps to re-generate:
1. Download the API spec as json.
1. `brew install openapi-generator`
1. `openapi-generator generate -i ./e-conomic.openapi.json -g elixir -o ./ex_economic/`
1. Delete the Changelog lines from this README. They are not proper markdown and makes it hard to read on Github.
1. Add back this section of steps for the next person that needs to regenerate.

## 

# VismaEConomicOpenAPI

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `visma_e_conomic_open_api` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:visma_e_conomic_open_api, "~> v16.2.1"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/visma_e_conomic_open_api][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :visma_e_conomic_open_api, base_url: "https://apis.e-conomic.com/api/v16.2.1"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`VismaEConomicOpenAPI.Connection.new/1`:

```elixir
client = VismaEConomicOpenAPI.Connection.new(base_url: "https://apis.e-conomic.com/api/v16.2.1")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/visma_e_conomic_open_api
