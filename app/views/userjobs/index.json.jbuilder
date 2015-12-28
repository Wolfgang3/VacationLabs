json.array!(@userjobs) do |userjob|
  json.extract! userjob, :id, :jobid, :userid
  json.url userjob_url(userjob, format: :json)
end
