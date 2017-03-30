defmodule Imdumb do
  @moduledoc """
  Documentation for Imdumb.
  """

  @doc """

  ## Examples

  """

  @cheatsheet [
    {:markdown_to_pdf, "pandoc |file.md| -s -o |output.pdf|", "transforms pdf to markdown"},
    {:docker_running, "docker ps", "show all running docker images"},
    {:which_gestorpsi, "which virtualenvwrapper.sh", "activates virtualenv"},
    {:used_ports, "sudo netstat -nltp | grep 8000", "see ports being used"},
    {:escript, "mix escript.build", "compile script for elixir scripts"}
  ]

  def main(args),
    do: args |> parse_args |> process

  def parse_args(args) do
    {options, _, _} = OptionParser.parse(args, switches: [name: :string])
    options
  end

  def process([]),
    do: ""

  def process([h|t]) do
    {key, val} = h
    process_option(key, val)
    process(t)
  end

  def process_option(:test, val),
    do: IO.puts "It works!"

  def process_option(:all, val),
    do: process_option(:look, val)

  def process_option(:look, val),
    do: Enum.each(@cheatsheet, fn({key, comm, description}) -> IO.puts "#{description} \n\t=> #{comm}" end)

  def process_option(key, val),
    do: IO.puts "wat"
end
