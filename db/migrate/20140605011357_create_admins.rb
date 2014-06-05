class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :nama_lengkap
      t.string :no_hp
      t.string :alamat_rumah
      t.string :email
      t.references :peran, index: true

      t.timestamps
    end
  end
end
