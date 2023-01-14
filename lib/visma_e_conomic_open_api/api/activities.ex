# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VismaEConomicOpenAPI.Api.Activities do
  @moduledoc """
  API calls for all endpoints tagged `Activities`.
  """

  alias VismaEConomicOpenAPI.Connection
  import VismaEConomicOpenAPI.RequestBuilder

  @doc """
  Create a single Activity
  Use this endpoint to create a single Activity.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateActivityRequest): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.CreatedResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_activity(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.CreatedResult.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def create_activity(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/activities")
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
  Retrieve single Activity
  Use this endpoint to load a single Activity by id/number.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `number` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.Activity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_activity_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, VismaEConomicOpenAPI.Model.Activity.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_activity_by_id(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/activities/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.Activity{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}},
      {404, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve all Activities
  Use this endpoint to retrieve all Activities in bulk.  Max number of items returned in a single call is 1000. Use the continuation cursor parameter to set the continuation cursor for retrieval of next set of data. [pagination instructions](#section/Retrieving-data/Pagination)

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Cursor` (String.t): 
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, VismaEConomicOpenAPI.Model.ActivityCursorResults.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_activities(Tesla.Env.client, keyword()) :: {:ok, VismaEConomicOpenAPI.Model.ActivityCursorResults.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_all_activities(connection, opts \\ []) do
    optional_params = %{
      :Cursor => :query,
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/activities/all")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VismaEConomicOpenAPI.Model.ActivityCursorResults{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve allowed activities
  Use this endpoint to get all the activities that the employee is allowed to register an entry on for a given project. Potential restrictions of registration are based on recording rules in the UI, which cannot be modified through the API. Add the employee number and project to your query parameter to obtain the allowed activities for registrations.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `employee_number` (integer()): The employee number.
  - `project_number` (integer()): The project number.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%Activity{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_allowed_activities(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, list(VismaEConomicOpenAPI.Model.Activity.t)} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_allowed_activities(connection, employee_number, project_number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/activities/allowed")
      |> add_param(:query, :employeeNumber, employee_number)
      |> add_param(:query, :projectNumber, project_number)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VismaEConomicOpenAPI.Model.Activity{}]},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Retrieve the number of Activities
  Call this endpoint to get the number of Activities. You can use a filtering as well.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_number_of_activities(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_number_of_activities(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/activities/count")
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
  Retrieve a page of Activities
  Use this endpoint to load a page of Activities.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:Filter` (String.t): 
    - `:Sort` (String.t): 
    - `:PageSize` (integer()): 
    - `:SkipPages` (integer()): 

  ### Returns

  - `{:ok, [%Activity{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_page_of_activities(Tesla.Env.client, keyword()) :: {:ok, list(VismaEConomicOpenAPI.Model.Activity.t)} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def get_page_of_activities(connection, opts \\ []) do
    optional_params = %{
      :Filter => :query,
      :Sort => :query,
      :PageSize => :query,
      :SkipPages => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/activities")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VismaEConomicOpenAPI.Model.Activity{}]},
      {400, %VismaEConomicOpenAPI.Model.Error{}},
      {401, %VismaEConomicOpenAPI.Model.Error{}},
      {403, %VismaEConomicOpenAPI.Model.Error{}},
      {429, %VismaEConomicOpenAPI.Model.Error{}},
      {500, %VismaEConomicOpenAPI.Model.Error{}}
    ])
  end

  @doc """
  Update a single Activity
  Use this endpoint to update a single Activity.

  ### Parameters

  - `connection` (VismaEConomicOpenAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateActivityRequest): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_activity(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, VismaEConomicOpenAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def update_activity(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/activities")
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
