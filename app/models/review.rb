class Review < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "must be between 1 and 5" }
end
