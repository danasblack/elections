class Question < ActiveRecord::Base
 has_many :answers, through: :quizzes
end
