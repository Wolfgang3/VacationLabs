json.array!(@jobs) do |job|
  json.extract! job, :id, :company_name, :url, :job, :age, :qualification
  json.url job_url(job, format: :json)
end
