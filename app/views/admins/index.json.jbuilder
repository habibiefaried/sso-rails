json.array!(@admins) do |admin|
  json.extract! admin, :id, :nama_lengkap, :no_hp, :alamat_rumah, :email, :peran_id
  json.url admin_url(admin, format: :json)
end
