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

  def query_guess_action
    winning_number = 32
    input_guess = params["my_guess"].to_i
    if input_guess > winning_number
      @output_message = "Pick lower!"
    elsif input_guess < winning_number
      @output_message = "Pick higher!"
    else
      @output_message = "You win!"
    end
    render "query_guess.json.jb"
  end
end
