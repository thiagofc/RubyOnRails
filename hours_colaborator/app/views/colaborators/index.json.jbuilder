json.array!(@colaborators) do |colaborator|
  json.extract! colaborator, :id, :registration, :name, :email, :manager_id
  json.url colaborator_url(colaborator, format: :json)
end
