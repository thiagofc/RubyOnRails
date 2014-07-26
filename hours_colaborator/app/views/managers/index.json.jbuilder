json.array!(@managers) do |manager|
  json.extract! manager, :id, :registration, :name, :email
  json.url manager_url(manager, format: :json)
end
