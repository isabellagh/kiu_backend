class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email 
      t.string :gender
      t.string :goal
      t.string :image
      t.integer :age
      t.integer :weight
      t.integer :height
      t.integer :waist
      t.integer :hip
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
