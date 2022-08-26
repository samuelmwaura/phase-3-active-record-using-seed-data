class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title   #a method that will create a column called games that stores string values.
      t.string :genre
      t.string :platform
      t.integer :price
      t.timestamps # generates created_at and updated_at columns
    end
  end
end
