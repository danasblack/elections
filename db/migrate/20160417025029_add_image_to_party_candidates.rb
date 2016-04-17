class AddImageToPartyCandidates < ActiveRecord::Migration
  def change
    add_column :party_candidates, :image, :string
  end
end
