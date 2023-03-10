# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Model.Error do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :message,
    :developerHint,
    :logId,
    :logTimeUtc,
    :property
  ]

  @type t :: %__MODULE__{
    :message => String.t | nil,
    :developerHint => String.t | nil,
    :logId => String.t | nil,
    :logTimeUtc => String.t | nil,
    :property => String.t | nil
  }
end

defimpl Poison.Decoder, for: VismaEConomicOpenAPI.Model.Error do
  def decode(value, _options) do
    value
  end
end

