# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Api.ProjectGroups do
  @moduledoc """
  API calls for all endpoints tagged `ProjectGroups`.
  """

  alias VismaEConomicOpenAPI.Connection
  import VismaEConomicOpenAPI.RequestBuilder

  @doc """
  Create a single Project Group
  Use this endpoint to create a single Project Group.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (CreateProjectGroupRequest): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.CreatedResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_project_group(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.CreatedResult.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def create_project_group(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/projectgroups")
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
  Retrieve all Project Groups
  Use this endpoint to retrieve all Project Groups in bulk.  Max number of items returned in a single call is 1000. Use the continuation cursor parameter to set the continuation cursor for retrieval of next set of data. [pagination instructions](#section/Retrieving-data/Pagination)

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Cursor` (String.t): 
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.ProjectGroupCursorResults.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_project_groups(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.ProjectGroupCursorResults.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_all_project_groups(connection, opts \\ []) do
    optional_params = %{
      :Cursor => :query,
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/projectgroups/all")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.ProjectGroupCursorResults{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve the number of Project Groups
  Call this endpoint to get the number of Project Groups. You can use a filtering as well.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_number_of_project_groups(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_number_of_project_groups(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/projectgroups/count")
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
  Retrieve a page of Project Groups
  Use this endpoint to load a page of Project Groups.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 
    - `:Sort` (String.t): 
    - `:PageSize` (integer()): 
    - `:SkipPages` (integer()): 

  ### Returns

  - `{:ok, [%ProjectGroup{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_page_of_project_groups(Tesla.Env.client, keyword()) :: {:ok, list(VismaEConomicOpenAPI.Model.ProjectGroup.t)} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_page_of_project_groups(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query,
      :Sort => :query,
      :PageSize => :query,
      :SkipPages => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/projectgroups")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VismaEConomicOpenAPI.Model.ProjectGroup{}]},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve single Project Group
  Use this endpoint to load a single Project Group by id/number.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `number` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.ProjectGroup.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_project_group_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:ok, VismaEConomicOpenAPI.Model.ProjectGroup.t} | {:error, Tesla.Env.t}
  def get_project_group_by_id(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projectgroups/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.ProjectGroup{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}},
      {404, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end
end
