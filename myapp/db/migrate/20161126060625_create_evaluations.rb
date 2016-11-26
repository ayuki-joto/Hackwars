class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :perspicuity
      t.integer :device
      t.integer :voice
      t.integer :concern
      t.integer :speed

      t.timestamps null: false
    end
  end
end
