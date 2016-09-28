# Yunpian

云片网 短信 elixir sdk

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `yunpian` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:yunpian, git: "https://github.com/davidqhr/yunpian-elixir-sdk"}]
    end
    ```

  2. Ensure `yunpian` is started before your application:

    ```elixir
    def application do
      [applications: [:yunpian]]
    end
    ```

## 使用

```elixir
# in you project

config :yunpian,
  apikey: "xxxxx"
```

```elixir

res = Yunpian.single_send(%{ mobile: "1xxxxxxxxxx", text: "" })

```