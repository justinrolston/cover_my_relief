# CoverMyRelief [![Build Status](https://travis-ci.org/justinrolston/cover_my_relief.svg?branch=master)](https://travis-ci.org/justinrolston/cover_my_relief)

Cover My Relief is an Elixir client to the CoverMyMeds API.

## Installation

  1. Add `cover_my_relief` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:cover_my_relief, "~> 0.1.0"}]
    end
    ```

  2. Ensure `cover_my_relief` is started before your application:

    ```elixir
    def application do
      [applications: [:cover_my_relief]]
    end
    ```

## Dependenies 

* Exvcr - https://github.com/parroty/exvcr

