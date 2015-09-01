class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :profile, index: true, foreign_key: true
      t.string :avatar

      t.timestamps null: false
    end
  end
end
