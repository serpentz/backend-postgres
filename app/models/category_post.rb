class CategoryPost < ApplicationRecord
	belongs_to :post
    belongs_to :category

    validates  :post, :uniqueness => {:scope => :category}
end
