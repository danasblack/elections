class CreatePartyCandidates < ActiveRecord::Migration
  def change
    create_table :party_candidates do |t|
      t.string :name
      t.string :party_affiliation
      t.string :experience
      t.string :background

      t.timestamps null: false
    end
  end
end
