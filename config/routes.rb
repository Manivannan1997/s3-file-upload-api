Rails.application.routes.draw do
  namespace :api, as: nil do
    namespace :v1, as: nil do |version|
      get "/get_images" => "image_files#get_images"
      post "/upload" => "image_files#upload"
      delete "/destroy" => "image_files#destroy"
    end
  end
end
