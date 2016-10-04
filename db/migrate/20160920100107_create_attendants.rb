class CreateAttendants < ActiveRecord::Migration[5.0]
  def change
    create_table :attendants do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :university
      t.string :ticket, default: 1
      t.string :payment, default: 1
      t.string :questions
      t.string :diet, default: 1
      t.string :roommate

      t.string :invoice_university
      t.string :invoice_address
      t.string :invoice_nip

      t.boolean :sms, default: false
      t.boolean :agree, default: false

      t.timestamps
    end
  end
end
