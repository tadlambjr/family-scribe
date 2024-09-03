class User < ApplicationRecord
  has_many :events
  has_many :people
  has_many :places
  has_many :cagtegories
end
