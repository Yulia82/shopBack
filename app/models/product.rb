class Product < ApplicationRecord
    has_many :line_items

    validates :title, presence: true, length: { minimum: 2 } 
    validates :description, presence: true, length: { minimum: 5 } 
    validates :price, presence: true, length: { minimum: 1 }, numericality: {greater_than_or_equal_to: 0.01}

    before_destroy :check_reference_any_line_items

    private

    def
        if line_items.empty?
            return true
        else
            errors.add(:base, 'exist line_items')
            return false
       end
    end

end

