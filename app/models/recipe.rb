class Recipe < ApplicationRecord
    belongs_to :user
    validates :title, :ingredients, :instructions, :image, :cook_time, :prep_time, presence: true
    validates :vegetarian, inclusion: { in: [true, false] }
    validates :title, :ingredients, :instructions, :image, :cook_time, :prep_time, length: { minimum: 1}
end
