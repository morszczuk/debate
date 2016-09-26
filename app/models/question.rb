class Question < ApplicationRecord
    belongs_to :attendant
    validates :question, presence: true
end
