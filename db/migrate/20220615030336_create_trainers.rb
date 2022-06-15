class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :email 
      t.string :password_digest
      t.string :image
      t.string :bio
      t.integer :age

      t.timestamps
    end
  end
end
