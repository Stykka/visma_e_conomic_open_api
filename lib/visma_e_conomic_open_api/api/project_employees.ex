# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Api.ProjectEmployees do
  @moduledoc """
  API calls for all endpoints tagged `ProjectEmployees`.
  """

  alias VismaEConomicOpenAPI.Connection
  import VismaEConomicOpenAPI.RequestBuilder

  @doc """
  Create a single Project employee
  Use this endpoint to create a single Project employee.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateProjectEmployeeRequest): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.CreatedResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_project_employee(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.CreatedResult.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def create_project_employee(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/project-employees")
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
  Delete single Project employee
  Use this endpoint to delete a single Project employee by id/number.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `number` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_project_employee_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def delete_project_employee_by_id(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/project-employees/#{number}")
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
  Retrieve all Project employees
  Use this endpoint to retrieve all Project employees in bulk.  Max number of items returned in a single call is 1000. Use the continuation cursor parameter to set the continuation cursor for retrieval of next set of data. [pagination instructions](#section/Retrieving-data/Pagination)

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Cursor` (String.t): 
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.ProjectEmployeeCursorResults.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_project_employees(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.ProjectEmployeeCursorResults.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_all_project_employees(connection, opts \\ []) do
    optional_params = %{
      :Cursor => :query,
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/project-employees/all")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.ProjectEmployeeCursorResults{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve the number of Project employees
  Call this endpoint to get the number of Project employees. You can use a filtering as well.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_number_of_project_employees(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_number_of_project_employees(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/project-employees/count")
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
  Retrieve a page of Project employees
  Use this endpoint to load a page of Project employees.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 
    - `:Sort` (String.t): 
    - `:PageSize` (integer()): 
    - `:SkipPages` (integer()): 

  ### Returns

  - `{:ok, [%ProjectEmployee{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_page_of_project_employees(Tesla.Env.client, keyword()) :: {:ok, list(VismaEConomicOpenAPI.Model.ProjectEmployee.t)} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_page_of_project_employees(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query,
      :Sort => :query,
      :PageSize => :query,
      :SkipPages => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/project-employees")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VismaEConomicOpenAPI.Model.ProjectEmployee{}]},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve single Project employee
  Use this endpoint to load a single Project employee by id/number.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `number` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.ProjectEmployee.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_project_employee_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, VismaEConomicOpenAPI.Model.ProjectEmployee.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_project_employee_by_id(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/project-employees/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.ProjectEmployee{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}},
      {404, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Update a single Project employee
  Use this endpoint to update a single Project employee.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateProjectEmployeeRequest): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_project_employee(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def update_project_employee(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/project-employees")
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
