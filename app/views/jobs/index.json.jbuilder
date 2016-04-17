json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :location, :requirements, :remuneration
  json.url job_url(job, format: :json)
end
