json.array!(@single_apps) do |single_app|
  json.extract! single_app, :id, :name, :description, :image, :price, :url
  json.url single_app_url(single_app, format: :json)
end
