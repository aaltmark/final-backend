class Request < ApplicationRecord
  belongs_to :instructor
  belongs_to :user
  belongs_to :resort
end
