class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :email_address
      t.boolean :has_purchased
      t.boolean :has_email_consent
      t.string :name

      t.timestamps
    end
  end
end
