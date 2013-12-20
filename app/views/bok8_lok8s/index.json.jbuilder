json.array!(@bok8_lok8s) do |bok8_lok8|
  json.extract! bok8_lok8, :id, :篇名, :編號, :類名
  json.url bok8_lok8_url(bok8_lok8, format: :json)
end
