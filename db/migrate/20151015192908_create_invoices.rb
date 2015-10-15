class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.string :salesperson
      t.string :company
      t.decimal :tax

      t.timestamps null: false
    end
  end
end
