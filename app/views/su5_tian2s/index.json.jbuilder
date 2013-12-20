json.array!(@su5_tian2s) do |su5_tian2|
  json.extract! su5_tian2, :id, :bok8_lok8_id, :辭典編號, :噶哈巫語教材標記法, :噶哈巫語潘永歷標記法, :中文譯解, :臺語譯解, :參考, :出處
  json.url su5_tian2_url(su5_tian2, format: :json)
end
