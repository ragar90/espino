class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone_number
      t.integer :host_capacity
      t.string :type

      t.timestamps
    end
  end
end
