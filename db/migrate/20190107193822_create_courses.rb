class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :subject
      t.integer :time_completion
      t.string :description

      t.timestamps
    end
  end
end
