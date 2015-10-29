class CreateCompany1s < ActiveRecord::Migration
  def change
    create_table :company1s do |t|
      t.string :name
      t.string :manager
      t.string :status
      t.integer :terms

      t.timestamps null: false
    end
  end
end
