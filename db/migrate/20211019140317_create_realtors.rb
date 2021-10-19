class CreateRealtors < ActiveRecord::Migration[6.1]
  def change
    create_table :realtors do |t|

      t.timestamps
    end
  end
end
