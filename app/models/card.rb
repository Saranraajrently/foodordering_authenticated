class Card < ApplicationRecord
    belongs_to :user do
    validates :card_number, numericality: { only_integer: true }
    end
    


end