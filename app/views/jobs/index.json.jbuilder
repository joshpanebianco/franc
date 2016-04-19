json.array!(@jobs) do |job|
  json.extract! job, :id, :company, :description, :location, :requirements, :remuneration, :position, :contract
  json.url job_url(job, format: :json)
end
