class Category < ActiveRecord::Base

  has_many :posts, dependent: :nullify

  validates :name, presence:   {message: "A Category Name is Required"},
                   uniqueness: {scope: :name}

end
