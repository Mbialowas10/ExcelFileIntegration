json.extract! incident, :id, :incident_number, :incident_type, :call_time, :closed_time, :vehicle, :unit, :neighbourhood, :ward, :created_at, :updated_at
json.url incident_url(incident, format: :json)
