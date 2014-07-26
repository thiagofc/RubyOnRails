json.array!(@colaborators) do |colaborator|
  json.extract! colaborator, :id, :registration, :name, :email
  json.url colaborator_url(colaborator, format: :json)
end
