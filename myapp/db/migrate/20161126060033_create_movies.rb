class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :subject
      t.string :school-type
      t.string :school
      t.integer :school-grade
      t.text :content

      t.timestamps null: false
    end
  end
end
