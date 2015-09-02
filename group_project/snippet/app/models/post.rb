class Post < ActiveRecord::Base

  belongs_to :category

  validates   :title, presence: {message: "A title is required"},
                      uniqueness: {scope: :category_id}
  validates   :work, presence:   {message: "A code smaple is require"}
  validates   :category_id, presence: {message: "Please Select a catgeory" }


end
