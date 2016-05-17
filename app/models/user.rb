class User < ActiveRecord::Base
  has_many :ballot_candidates
  has_many :ballots, through: :ballot_candidates
  has_many :party_candidates, through: :ballot_candidates 
  has_many :local_candidates, through: :ballot_candidates

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
