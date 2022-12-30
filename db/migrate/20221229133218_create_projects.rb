class CreateProjects < ActiveRecord::Migration[7.0]
  def up
    create_table :projects do |t|
      t.string :owner_username, null: false, default: ''
      t.string :project_name,   null: false, default: ''
      t.timestamps
    end

    add_index :projects, :project_name
  end

  def down
    drop_table :projects
    remove_index :projects, column: :project_name
  end
end
