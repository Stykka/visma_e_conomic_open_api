# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Model.ApproveMileageEntriesRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :numbers
  ]

  @type t :: %__MODULE__{
    :numbers => [integer()]
  }
end

defimpl Poison.Decoder, for: VismaEConomicOpenAPI.Model.ApproveMileageEntriesRequest do
  def decode(value, _options) do
    value
  end
end

