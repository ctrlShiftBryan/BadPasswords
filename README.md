# Badpasswords

**TODO: Add description**

## Installation

The package can be installed by adding `badpasswords` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:badpasswords, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
# first start the GenServer
GenServer.start_link(BadPasswords, [])

# Then check is the password is bad
BadPasswords.contains?("I Love You")
```


