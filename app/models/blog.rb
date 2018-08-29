class Blog < ApplicationRecord
  validates :content, length: {in: 1..75}
end
