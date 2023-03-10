# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Model.Mileage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :number,
    :projectNumber,
    :employeeNumber,
    :date,
    :distance,
    :from,
    :to,
    :isApproved,
    :includeApprove,
    :objectVersion
  ]

  @type t :: %__MODULE__{
    :number => integer() | nil,
    :projectNumber => integer(),
    :employeeNumber => integer(),
    :date => DateTime.t,
    :distance => float(),
    :from => String.t | nil,
    :to => String.t | nil,
    :isApproved => boolean() | nil,
    :includeApprove => boolean() | nil,
    :objectVersion => String.t | nil
  }
end

defimpl Poison.Decoder, for: VismaEConomicOpenAPI.Model.Mileage do
  def decode(value, _options) do
    value
  end
end

