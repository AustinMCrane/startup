class Blog < ApplicationRecord
  # make sure that ever blog has a title and body
  validates_presence_of :title
  validates_presence_of :body
end
