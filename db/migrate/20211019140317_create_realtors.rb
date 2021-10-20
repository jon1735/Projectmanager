class CreateRealtors < ActiveRecord::Migration[6.1]
  def change
    create_table :realtors do |t|
      t.string :name
      t.timestamps
    end
  end
end
