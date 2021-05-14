class News < ApplicationRecord
  belongs_to :location, :optional => true
end
