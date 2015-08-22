json.array!(@hacks) do |hack|
  json.extract! hack, :id, :mac, :name, :heartbeat, :self_latitude, :self_longitude, :sanc_latitude, :sanc_longitude, :direction, :distance
  json.url hack_url(hack, format: :json)
end
