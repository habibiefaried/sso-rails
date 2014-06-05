json.array!(@perans) do |peran|
  json.extract! peran, :id, :peran, :jabatan
  json.url peran_url(peran, format: :json)
end
