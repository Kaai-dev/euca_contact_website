class CreateEnquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :enquiries, id: :uuid do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.integer :contact_number
      t.string :company
      t.string :department
      t.string :message
      t.boolean :euca_iot
      t.boolean :processed


      t.timestamps
    end
  end
end
