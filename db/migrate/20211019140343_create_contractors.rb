class CreateContractors < ActiveRecord::Migration[6.1]
  def change
    create_table :contractors do |t|
      t.string :name
      t.boolean :lawn_care
      t.boolean :plumbing
      t.boolean :electrical
      t.timestamps
    end
  end
end
