class AddImageToLocalCandidates < ActiveRecord::Migration
  def change
    add_column :local_candidates, :image, :string
  end
end
