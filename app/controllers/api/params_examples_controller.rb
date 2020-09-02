class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    # Browser url example: http://localhost:3000/api/query_params_path?my_name=jay&age=22
    input_value = params["my_name"]
    @output_message = "Hello you gave me this data: #{input_value}"
    @age = params["age"]
    render "query_params.json.jb"
  end

  def name_action
    input_name = params["my_name"]
    @output_message = input_name.upcase
    if @output_message.starts_with?("A")
      @output_message += " (hey your name starts with A)"
    end
    render "name.json.jb"
  end
end
