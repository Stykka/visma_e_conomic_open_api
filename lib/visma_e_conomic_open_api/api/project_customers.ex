# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Api.ProjectCustomers do
  @moduledoc """
  API calls for all endpoints tagged `ProjectCustomers`.
  """

  alias VismaEConomicOpenAPI.Connection
  import VismaEConomicOpenAPI.RequestBuilder

  @doc """
  Retrieve all Project Customers
  Use this endpoint to retrieve all Project Customers in bulk.  Max number of items returned in a single call is 1000. Use the continuation cursor parameter to set the continuation cursor for retrieval of next set of data. [pagination instructions](#section/Retrieving-data/Pagination)

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Cursor` (String.t): 
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.ProjectCustomerCursorResults.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_project_customers(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.ProjectCustomerCursorResults.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_all_project_customers(connection, opts \\ []) do
    optional_params = %{
      :Cursor => :query,
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/project-customers/all")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.ProjectCustomerCursorResults{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve the number of Project Customers
  Call this endpoint to get the number of Project Customers. You can use a filtering as well.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_number_of_project_customers(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_number_of_project_customers(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/project-customers/count")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve a page of Project Customers
  Use this endpoint to load a page of Project Customers.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 
    - `:Sort` (String.t): 
    - `:PageSize` (integer()): 
    - `:SkipPages` (integer()): 

  ### Returns

  - `{:ok, [%ProjectCustomer{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_page_of_project_customers(Tesla.Env.client, keyword()) :: {:ok, list(VismaEConomicOpenAPI.Model.ProjectCustomer.t)} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_page_of_project_customers(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query,
      :Sort => :query,
      :PageSize => :query,
      :SkipPages => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/project-customers")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VismaEConomicOpenAPI.Model.ProjectCustomer{}]},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve single Project Customer
  Use this endpoint to load a single Project Customer by id/number.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `number` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.ProjectCustomer.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_project_customer_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, VismaEConomicOpenAPI.Model.ProjectCustomer.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_project_customer_by_id(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/project-customers/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.ProjectCustomer{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}},
      {404, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end
end
