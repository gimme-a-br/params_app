Rails.application.routes.draw do
  namespace :api do
    get "/query_params_path" => "params_examples#query_params_action"
    get "/segment_params_path/:product_id" => "params_examples#segment_params_action"
    post "/body_params_path" => "params_examples#body_params_action"

    get "/name_path" => "params_examples#name_action"
    get "/query_guess_path" => "params_examples#query_guess_action"
    get "/segment_guess_path/:my_guess" => "params_examples#query_guess_action"
    post "/body_guess_path" => "params_examples#query_guess_action"
    post "/login" => "params_examples#login_action"
  end
end
