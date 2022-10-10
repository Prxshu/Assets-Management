class CreateAssests < ActiveRecord::Migration[7.0]
  def change
    create_table :assests do |t|
      t.string :assest_name
      t.string :serial_no
      t.string :category
      t.integer :aesset_ammount
      t.string :department
      t.string :description
      t.timestamps
    end
  end
end
