class User < ActiveRecord::Base
  has_many :ballotcandidates
  has_many :ballots

  belongs_to :partycandidates 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
