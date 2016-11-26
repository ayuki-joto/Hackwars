class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :area
      t.string :schooltype
      t.string :school
      t.integer :schoolgrade
      t.string :subject
      t.string :email

      t.timestamps null: false
    end
  end
end
