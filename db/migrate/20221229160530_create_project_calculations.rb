class CreateProjectCalculations < ActiveRecord::Migration[7.0]
  def up
    create_table :project_calculations do |t|
      t.references :projects
      
      t.string  :username,                   null: false, default: ''
      
      t.datetime :start_week,                null: false
      t.datetime :end_week,                  null: false

      t.integer :create_pull_request_score,  null: false, default: 0
      t.integer :pull_request_comment_score, null: false, default: 0
      t.integer :pull_request_review_score,  null: false, default: 0

      t.timestamps
    end

    add_index :project_calculations, :username
  end

  def down
    drop_table :project_calculations
    remove_index :project_calculations, column: :username
  end
end
