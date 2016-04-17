class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
