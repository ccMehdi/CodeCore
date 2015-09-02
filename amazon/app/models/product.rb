class Product < ActiveRecord::Base

  has_many :comments, dependent: :destroy

  validates :title, presence: {message: "Must have a title"},
                    uniqueness: {message: "This title is already in use"}
  validates :price, presence: {message: "You must enter a price"},
                    numericality: {greater_than: 0}

end
