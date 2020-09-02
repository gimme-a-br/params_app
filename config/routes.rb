Rails.application.routes.draw do
  namespace :api do
    get "/query_params_path" => "params_examples#query_params_action"

    get "/name_path" => "params_examples#name_action"
    get "/query_guess_path" => "params_examples#query_guess_action"
  end
end
