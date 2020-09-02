class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    # Browser url example: http://localhost:3000/api/query_params_path?my_name=jay&age=22
    input_value = params["my_name"]
    @output_message = "Hello you gave me this data: #{input_value}"
    @age = params["age"]
    render "query_params.json.jb"
  end
end
