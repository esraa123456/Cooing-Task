class CreateOpportunities < ActiveRecord::Migration[6.0]
  def up
    create_table :opportunities do |t|
      t.string :title
      t.string :description
      t.string :name, null: false
      t.string :phone, null: false
      t.string :email
      t.string :job_title
      t.string :best_time_to_call
      t.integer :property_type
      t.timestamps
    end
    add_attachment :opportunities, :image
  end
  def down
    drop_table :opportunities
  end
end
