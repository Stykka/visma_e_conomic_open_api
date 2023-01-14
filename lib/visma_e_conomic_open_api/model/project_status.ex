# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Model.ProjectStatus do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :number,
    :name,
    :type,
    :priority,
    :objectVersion
  ]

  @type t :: %__MODULE__{
    :number => integer() | nil,
    :name => String.t | nil,
    :type => ProjectStatusType | nil,
    :priority => integer() | nil,
    :objectVersion => String.t | nil
  }
end

defimpl Poison.Decoder, for: VismaEConomicOpenAPI.Model.ProjectStatus do
  import VismaEConomicOpenAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:type, :struct, VismaEConomicOpenAPI.Model.ProjectStatusType, options)
  end
end

