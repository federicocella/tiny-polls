class Poll < ApplicationRecord
  has_many :choices, dependent: :delete_all
end
