json.array!(@bok8_loks) do |bok8_lok|
  json.extract! bok8_lok, :id, :pinn1_mia5, :pian1_ho7, :lui7
  json.url bok8_lok_url(bok8_lok, format: :json)
end
