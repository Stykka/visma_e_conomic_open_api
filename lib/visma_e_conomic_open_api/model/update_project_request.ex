# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Model.UpdateProjectRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :number,
    :name,
    :projectGroupNumber,
    :customerNumber,
    :isClosed,
    :mileage,
    :isBarred,
    :isMainProject,
    :isMileageInvoiced,
    :lastUpdated,
    :responsibleEmployeeNumber,
    :mainProjectNumber,
    :otherResponsibleEmployeeNumber,
    :status,
    :description,
    :deliveryDate,
    :departmentNumber,
    :closedDate,
    :fixedPrice,
    :costPrice,
    :salesPrice,
    :invoicedTotal,
    :contactPersonId,
    :deliveryLocationNumber,
    :objectVersion
  ]

  @type t :: %__MODULE__{
    :number => integer() | nil,
    :name => String.t,
    :projectGroupNumber => integer(),
    :customerNumber => integer() | nil,
    :isClosed => boolean() | nil,
    :mileage => float() | nil,
    :isBarred => boolean() | nil,
    :isMainProject => boolean() | nil,
    :isMileageInvoiced => boolean() | nil,
    :lastUpdated => DateTime.t | nil,
    :responsibleEmployeeNumber => integer() | nil,
    :mainProjectNumber => integer() | nil,
    :otherResponsibleEmployeeNumber => integer() | nil,
    :status => integer() | nil,
    :description => String.t | nil,
    :deliveryDate => DateTime.t | nil,
    :departmentNumber => integer() | nil,
    :closedDate => DateTime.t | nil,
    :fixedPrice => float() | nil,
    :costPrice => float() | nil,
    :salesPrice => float() | nil,
    :invoicedTotal => float() | nil,
    :contactPersonId => integer() | nil,
    :deliveryLocationNumber => integer() | nil,
    :objectVersion => String.t | nil
  }
end

defimpl Poison.Decoder, for: VismaEConomicOpenAPI.Model.UpdateProjectRequest do
  def decode(value, _options) do
    value
  end
end

