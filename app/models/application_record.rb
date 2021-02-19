class ApplicationRecord < ActiveRecord::Base
  has_one_attached :photo
end
