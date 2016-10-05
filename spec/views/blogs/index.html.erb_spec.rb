require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :title => "Title",
        :body => "MyText",
        :author_id => ""
      ),
      Blog.create!(
        :title => "Title",
        :body => "MyText",
        :author_id => ""
      )
    ])
  end

  it "renders a list of blogs" do
  end
end
