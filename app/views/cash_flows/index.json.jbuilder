json.array!(@cash_flows) do |cash_flow|
  json.extract! cash_flow, :id
  json.url cash_flow_url(cash_flow, format: :json)
end
