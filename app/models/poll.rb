class Poll < ActiveRecord::Base
  has_many   :choices
  belongs_to :category
end
