# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Model.ProjectActivityCursorResults do
  @moduledoc """
  Array of objects along with a cursor. Max number in the array returned is 1000
  """

  @derive [Poison.Encoder]
  defstruct [
    :items,
    :cursor
  ]

  @type t :: %__MODULE__{
    :items => [VismaEConomicOpenAPI.Model.ProjectActivity.t] | nil,
    :cursor => String.t | nil
  }
end

defimpl Poison.Decoder, for: VismaEConomicOpenAPI.Model.ProjectActivityCursorResults do
  import VismaEConomicOpenAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:items, :list, VismaEConomicOpenAPI.Model.ProjectActivity, options)
  end
end

