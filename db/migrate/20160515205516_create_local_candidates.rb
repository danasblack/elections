class CreateLocalCandidates < ActiveRecord::Migration
  def change
    create_table :local_candidates do |t|
      t.string :name
      t.string :position
      t.string :party_affiliation
      t.string :experience
      t.string :background

      t.timestamps null: false
    end
  end
end
