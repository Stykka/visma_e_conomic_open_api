# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Model.EmployeeGroupCursorResults do
  @moduledoc """
  Array of objects along with a cursor. Max number in the array returned is 1000
  """

  @derive [Poison.Encoder]
  defstruct [
    :items,
    :cursor
  ]

  @type t :: %__MODULE__{
    :items => [VismaEConomicOpenAPI.Model.EmployeeGroup.t] | nil,
    :cursor => String.t | nil
  }
end

defimpl Poison.Decoder, for: VismaEConomicOpenAPI.Model.EmployeeGroupCursorResults do
  import VismaEConomicOpenAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:items, :list, VismaEConomicOpenAPI.Model.EmployeeGroup, options)
  end
end

