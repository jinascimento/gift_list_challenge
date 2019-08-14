if Rails.env == 'production'
  url = ENV["BONSAI_URL"]
elsif Rails.env == 'dev_docker'
  url = ENV["ELASTICSEARCH_URL"]
elsif Rails.env == 'development'
  url = 'localhost'
end

transport_options = { request: { timeout: 250 } }
options = { hosts: url, retry_on_failure: true, transport_options: transport_options }
Searchkick.client = Elasticsearch::Client.new(options)