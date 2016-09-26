class CreateAttendants < ActiveRecord::Migration[5.0]
  def change
    create_table :attendants do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :university
      t.boolean :vegetarian, default: false
      t.string :roommate
      t.boolean :sms, default: false
      t.boolean :invoice, default: false
      t.string :invoice_university
      t.string :invoice_address
      t.string :invoice_nip

      t.timestamps
    end
  end
end
