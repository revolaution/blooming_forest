class Choice < ActiveRecord::Base
  has_many   :votes
  belongs_to :poll
end
