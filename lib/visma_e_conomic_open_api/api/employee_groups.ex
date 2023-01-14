# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Api.EmployeeGroups do
  @moduledoc """
  API calls for all endpoints tagged `EmployeeGroups`.
  """

  alias VismaEConomicOpenAPI.Connection
  import VismaEConomicOpenAPI.RequestBuilder

  @doc """
  Create a single Employee group
  Use this endpoint to create a single Employee group.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateEmployeeGroupRequest): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.CreatedResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_employee_group(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.CreatedResult.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def create_employee_group(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/employeegroups")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %VismaEConomicOpenAPI.Model.CreatedResult{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Delete single Employee group
  Use this endpoint to delete a single Employee group by id/number.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `number` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_employee_group_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def delete_employee_group_by_id(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/employeegroups/#{number}")
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

  @doc """
  Retrieve all Employee groups
  Use this endpoint to retrieve all Employee groups in bulk.  Max number of items returned in a single call is 1000. Use the continuation cursor parameter to set the continuation cursor for retrieval of next set of data. [pagination instructions](#section/Retrieving-data/Pagination)

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Cursor` (String.t): 
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.EmployeeGroupCursorResults.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_employee_groups(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.EmployeeGroupCursorResults.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_all_employee_groups(connection, opts \\ []) do
    optional_params = %{
      :Cursor => :query,
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/employeegroups/all")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.EmployeeGroupCursorResults{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve single Employee group
  Use this endpoint to load a single Employee group by id/number.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `number` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.EmployeeGroup.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_employee_group_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, VismaEConomicOpenAPI.Model.EmployeeGroup.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_employee_group_by_id(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/employeegroups/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.EmployeeGroup{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}},
      {404, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve the number of Employee groups
  Call this endpoint to get the number of Employee groups. You can use a filtering as well.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_number_of_employee_groups(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_number_of_employee_groups(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/employeegroups/count")
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
  Retrieve a page of Employee groups
  Use this endpoint to load a page of Employee groups.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 
    - `:Sort` (String.t): 
    - `:PageSize` (integer()): 
    - `:SkipPages` (integer()): 

  ### Returns

  - `{:ok, [%EmployeeGroup{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_page_of_employee_groups(Tesla.Env.client, keyword()) :: {:ok, list(VismaEConomicOpenAPI.Model.EmployeeGroup.t)} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_page_of_employee_groups(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query,
      :Sort => :query,
      :PageSize => :query,
      :SkipPages => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/employeegroups")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VismaEConomicOpenAPI.Model.EmployeeGroup{}]},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Update a single Employee group
  Use this endpoint to update a single Employee group.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateEmployeeGroupRequest): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_employee_group(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def update_employee_group(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/employeegroups")
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
      {409, %VismaEConomicOpenAPI.Model.Error{}},
      {404, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end
end
