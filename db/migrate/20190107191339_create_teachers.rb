class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.integer :salary
      t.string :subject
      

      t.timestamps
    end 
  end
end
