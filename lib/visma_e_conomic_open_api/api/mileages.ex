# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Api.Mileages do
  @moduledoc """
  API calls for all endpoints tagged `Mileages`.
  """

  alias VismaEConomicOpenAPI.Connection
  import VismaEConomicOpenAPI.RequestBuilder

  @doc """
  Approve a list of Mileage entries
  Use this endpoint to approve a list of Mileage entries.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (ApproveMileageEntriesRequest): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec approve_mileage_entries(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def approve_mileage_entries(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/mileages/approve")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}},
      {404, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end
end
