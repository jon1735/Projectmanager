class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.boolean :vacancy
      t.string :lawn_care
      t.string :plumbing
      t.string :electrical
      t.integer :realtor_id
      t.integer :contractor_id
      t.timestamps
    end
  end
end
