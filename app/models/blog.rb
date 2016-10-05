# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

## Blog
# company blog
class Blog < ApplicationRecord
  # make sure that ever blog has a title and body
  validates_presence_of :title
  validates_presence_of :body
end
