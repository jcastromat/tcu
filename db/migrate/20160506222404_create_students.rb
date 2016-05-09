class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :carnet, null: false
      t.integer :project_id, null:false
      t.string :firstName, null: false
      t.string :lastName, null: false
      t.timestamps null: false
    end
  end
end
