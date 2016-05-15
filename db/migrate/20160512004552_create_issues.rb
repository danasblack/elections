class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.string :question

      t.timestamps null: false
    end
  end
end
