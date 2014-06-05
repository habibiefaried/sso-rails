class CreatePerans < ActiveRecord::Migration
  def change
    create_table :perans do |t|
      t.string :peran
      t.string :jabatan

      t.timestamps
    end
  end
end
