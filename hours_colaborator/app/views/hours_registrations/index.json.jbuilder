json.array!(@hours_registrations) do |hours_registration|
  json.extract! hours_registration, :id, :date, :colaborator_id, :entrance1, :exit1, :entrance2, :exit2, :entrance3, :exit3
  json.url hours_registration_url(hours_registration, format: :json)
end
