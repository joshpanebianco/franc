json.array!(@applications) do |application|
  json.extract! application, :id, :user_id, :first_name, :last_name, :email, :videoURL, :comments
  json.url application_url(application, format: :json)
end
