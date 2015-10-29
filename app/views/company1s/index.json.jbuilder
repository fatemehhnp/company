json.array!(@company1s) do |company1|
  json.extract! company1, :id, :name, :manager, :status, :terms
  json.url company1_url(company1, format: :json)
end
