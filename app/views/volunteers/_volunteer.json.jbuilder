json.extract! volunteer, :id, :name, :lastname, :email, :host_capacity, :type, :created_at, :updated_at
json.url volunteer_url(volunteer, format: :json)
